class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  def index
    @expenses = Expense.all
    # respond_with(@expenses)
  end

  def show
    # respond_with(@expense)
  end

  def new
    @expense = Expense.new
    # respond_with(@expense)
  end

  def edit
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.save
    # respond_with(@expense)
  end

  def update
    @expense.update(expense_params)
    # respond_with(@expense)
  end

  def destroy
    @expense.destroy
    # respond_with(@expense)
  end

  private
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def expense_params
      params.require(:expense).permit(:date, :title, :salary, :maintenance, :utility_bills, :total_expenses)
    end
end
