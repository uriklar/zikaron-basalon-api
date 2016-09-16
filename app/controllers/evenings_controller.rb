class EveningsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_evening, only: [:show, :update, :destroy]

  # GET /evenings
  def index
    @evenings = Evening.all

    render json: @evenings
  end

  # GET /evenings/1
  def show
    render json: @evening
  end

  # POST /evenings
  def create
    @evening = Evening.new(evening_params)

    if @evening.save
      render json: @evening, status: :created, location: @evening
    else
      render json: @evening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /evenings/1
  def update
    if @evening.update(evening_params)
      render json: @evening
    else
      render json: @evening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /evenings/1
  def destroy
    @evening.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evening
      @evening = Evening.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def evening_params
      params.require(:evening).permit(:address, :city_id, :max_guests, :needs_survivor, :private_free_text, :public_free_text, :open, :date, :time, :organization_name, :visible, :floor, :elevator, :language_id, :host_id)
    end
end
