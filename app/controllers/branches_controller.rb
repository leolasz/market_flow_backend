class BranchesController < ApplicationController

  def index
    @branches = Branch.all
    # @branches = Branch.find_by :user_id => @current_user
    render json: @branches
  end

  def new
    @branch = Branch.new
  end

  def create
    branch = Branch.create branch_params
    render json: branch
  end

    #Edit branch
  def edit
    @branch = Branch.find params[:id]
  end

    #Update branch
  def update
    @branch = Branch.find params[:id]
    @branch.update branch_params
    render json: @branch
  end

    #Show branch
  def show
    @branch = Branch.find params[:id]
  end

    #Delete branch
  def destroy
    branch = Branch.find params[:id]
    branch.destroy
    render json: Branch
  end

  private
    #Private methods
  def branch_params
    params.require(:branch).permit(:branch_name,:location, :email, :contact, :user_id)
  end
end
