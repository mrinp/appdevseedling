class TransactionsController < ApplicationController
before_action :authenticate_user!
  def index
    @transactions = Transaction.all
    

    render("transactions/index.html.erb")
  end

  def show
    @transaction = Transaction.find(params[:id])

    render("transactions/show.html.erb")
  end

  def new
    @transaction = Transaction.new
    @current_user = current_user

    render("transactions/new.html.erb")
  end

  def create
    @transaction = Transaction.new

    @transaction.user_id = params[:user_id]
    @transaction.amount = params[:amount]
    @transaction.lottery_elligible = params[:lottery_elligible]
    @transaction.date = DateTime.now
    @transaction.lottery_id = params[:lottery_id]

    save_status = @transaction.save

    if save_status == true
      redirect_to("/transactions/#{@transaction.id}", :notice => "Transaction created successfully.")
    else
      render("transactions/new.html.erb")
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
    @transaction.date = params[:created_at]

    render("transactions/edit.html.erb")
  end

  def update
    @transaction = Transaction.find(params[:id])

    @transaction.user_id = params[:user_id]
    @transaction.amount = params[:amount]
    @transaction.lottery_elligible = params[:lottery_elligible]
    @transaction.date = params[:created_at]
    @transaction.lottery_id = params[:lottery_id]

    save_status = @transaction.save

    if save_status == true
      redirect_to("/transactions/#{@transaction.id}", :notice => "Transaction updated successfully.")
    else
      render("transactions/edit.html.erb")
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])

    @transaction.destroy

    if URI(request.referer).path == "/transactions/#{@transaction.id}"
      redirect_to("/", :notice => "Transaction deleted.")
    else
      redirect_to(:back, :notice => "Transaction deleted.")
    end
  end
end
