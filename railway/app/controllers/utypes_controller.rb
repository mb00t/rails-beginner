class UtypesController < ApplicationController

  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @utypes = Utype.all
  end

  def show
  end

  def new
    @route = Utype.new
  end

  def create
    @route = Utype.new(route_params)

    if @route.save
      redirect_to @route, notice: 'Train was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @route.update(route_params)
      redirect_to @route
    else
      render :edit
    end
  end

  def destroy
    @route.destroy
    redirect_to utypes_path
  end

  private

  def set_route
    @route = Utype.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:title)
  end

end
