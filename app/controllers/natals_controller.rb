class NatalsController < ApplicationController
  before_action :set_natal, only: %i[ show update destroy ]

  # GET /natals
  def index
    @natals = Natal.all

    render json: @natals
  end

  # GET /natals/1
  def show
    render json: @natal
  end

  # POST /natals
  def create
    @natal = Natal.new(natal_params)

    if @natal.save
      render json: @natal, status: :created, location: @natal
    else
      render json: @natal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /natals/1
  def update
    if @natal.update(natal_params)
      render json: @natal
    else
      render json: @natal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /natals/1
  def destroy
    @natal.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_natal
      @natal = Natal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def natal_params
      params.require(:natal).permit(:name)
    end
end
