class CampusesController < ApplicationController
  before_action :set_campuse, only: %i[ show update destroy ]

  # GET /campuses
  def index
    @campuses = Campuse.all

    render json: @campuses
  end

  # GET /campuses/1
  def show
    render json: @campuse
  end

  # POST /campuses
  def create
    @campuse = Campuse.new(campuse_params)

    if @campuse.save
      render json: @campuse, status: :created, location: @campuse
    else
      render json: @campuse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campuses/1
  def update
    if @campuse.update(campuse_params)
      render json: @campuse
    else
      render json: @campuse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campuses/1
  def destroy
    @campuse.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campuse
      @campuse = Campuse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campuse_params
      params.require(:campuse).permit(:name, :location, :type)
    end
end
