class NomineesController < ApplicationController
  before_action :set_nominee, only: %i[ show update destroy ]

  # GET /nominees
  def index
    @nominees = Nominee.all

    render json: @nominees
  end

  # GET /nominees/1
  def show
    render json: @nominee
  end

  # POST /nominees
  def create
    @nominee = Nominee.new(nominee_params)

    if @nominee.save
      render json: @nominee, status: :created, location: @nominee
    else
      render json: @nominee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nominees/1
  def update
    if @nominee.update(nominee_params)
      render json: @nominee
    else
      render json: @nominee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nominees/1
  def destroy
    @nominee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nominee
      @nominee = Nominee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nominee_params
      params.require(:nominee).permit(:name, :votes)
    end
end
