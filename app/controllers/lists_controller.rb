class ListsController < ApplicationController
  def index
    @lists = lists.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(params[:lists])
    @list.save
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(params[:restaurant_params])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end
end
