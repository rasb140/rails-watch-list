class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def edit
  end

  def update
    @list.update!(list_params)
  end

  def show
  end

  def create
    list = List.new(list_params)
    list.save!
    redirect_to lists_path
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    puts params
    params.permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
