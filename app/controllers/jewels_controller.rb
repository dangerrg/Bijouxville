class JewelsController < ApplicationController
  before_action :set_jewel, only: %i[ show edit update destroy ]

  # GET /jewels
  def index
    @jewels = Jewel.all
  end

  # GET /jewels/1
  def show
  end

  # GET /jewels/new
  def new
    @jewel = Jewel.new
  end

  # GET /jewels/1/edit
  def edit
  end

  # POST /jewels
  def create
    @jewel = Jewel.new(jewel_params)
    @jewel.jeweler_id = current_jeweler.id
    result = JewelHandler::JewelCreator.call(@jewel)

    if result.success?
      redirect_to @jewel, notice: "Jewel was successfully created."
    else
      render :new, error: result.errors
    end
  end

  # PATCH/PUT /jewels/1
  def update
    if @jewel.update(jewel_params)
      redirect_to @jewel, notice: "Jewel was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /jewels/1
  def destroy
    result = JewelHandler::JewelDeletor.call(@jewel)
    redirect_to jewels_url, notice: "Jewel was successfully destroyed."
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewel
      @jewel = Jewel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jewel_params
      params.require(:jewel).permit(:name, :material, :type_of_stones, :number_of_stones, :description, :price, :jeweler_id)
    end
end
