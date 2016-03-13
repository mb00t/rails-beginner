class WagonsController < ApplicationController
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]

  # GET /wagons
  # GET /wagons.json
  def index
    @wagons = Wagon.all
  end

  # GET /wagons/1
  # GET /wagons/1.json
  def show
  end

  # GET /wagons/new
  def new
    @wagon = Wagon.new
  end

  # GET /wagons/1/edit
  def edit
  end

  # POST /wagons
  # POST /wagons.json
  def create
    @wagon = Wagon.new(wagon_params)

    respond_to do |format|
      if @wagon.save
        format.html { redirect_to @wagon, notice: 'Wagon was successfully created.' }
        format.json { render :show, status: :created, location: @wagon }
      else
        format.html { render :new }
        format.json { render json: @wagon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wagons/1
  # PATCH/PUT /wagons/1.json
  def update
    respond_to do |format|
      if @wagon.update(wagon_params)
        format.html { redirect_to @wagon, notice: 'Wagon was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /wagons/1
  # DELETE /wagons/1.json

  def destroy
    @wagon.destroy
    redirect_to wagons_path
  end

  private
  # Use callbacks to share common setup or conswagonts between actions.
  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def wagon_params
    params.require(:wagon).permit(:title, :train_id, :utype_id, :top_seats, :bottom_seats)
  end
end
