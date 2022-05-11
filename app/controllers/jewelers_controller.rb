class JewelersController < ApplicationController
  before_action :set_jeweler, only: %i[ show edit update destroy ]

  # GET /jewelers
  def index
    @jewelers = Jeweler.all
  end

  # GET /jewelers/1
  def show
  end

  # GET /jewelers/new
  def new
    @jeweler = Jeweler.new
  end

  # GET /jewelers/1/edit
  def edit
  end

  # POST /jewelers
  def create
    @jeweler = Jeweler.new(jeweler_params)
    # call service_object JewelerCreator with the instance object
    result = JewelerCreator.call(@jeweler)

    if result.success?
       redirect_to @jeweler, notice: "Jeweler was successfully created."
    else
       render :new, error: result.errors
    end

  end

  # PATCH/PUT /jewelers/1
  def update
    if @jeweler.update(jeweler_params)
      redirect_to @jeweler, notice: "Jeweler was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /jewelers/1
  def destroy
    @jeweler.destroy
    redirect_to jewelers_url, notice: "Jeweler was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jeweler
      @jeweler = Jeweler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jeweler_params
      params.require(:jeweler).permit(:name, :email)
    end
end
