class StonesController < ApplicationController
  before_action :set_stone, only: %i[ show edit update destroy ]

  # GET /stones
  def index
    @stones = Stone.all
  end

  # GET /stones/1
  def show
  end

  # GET /stones/new
  def new
    @stone = Stone.new
  end

  # GET /stones/1/edit
  def edit
  end

  # POST /stones
  def create
    @stone = Stone.new(stone_params)

    if @stone.save
      redirect_to @stone, notice: "Stone was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stones/1
  def update
    if @stone.update(stone_params)
      redirect_to @stone, notice: "Stone was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /stones/1
  def destroy
    @stone.destroy
    redirect_to stones_url, notice: "Stone was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stone
      @stone = Stone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stone_params
      params.require(:stone).permit(:name, :price, :jewel_id)
    end
end
