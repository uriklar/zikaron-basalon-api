class WitnessesController < ApplicationController
  before_action :set_witness, only: [:show, :update, :destroy]

  # GET /witnesses
  def index
    @witnesses = Witness.all

    render json: @witnesses
  end

  # GET /witnesses/1
  def show
    render json: @witness
  end

  # POST /witnesses
  def create
    @witness = Witness.new(witness_params)

    if @witness.save
      render json: @witness, status: :created, location: @witness
    else
      render json: @witness.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /witnesses/1
  def update
    if @witness.update(witness_params)
      render json: @witness
    else
      render json: @witness.errors, status: :unprocessable_entity
    end
  end

  # DELETE /witnesses/1
  def destroy
    @witness.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_witness
      @witness = Witness.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def witness_params
      params.require(:witness).permit(:first_name, :last_name, :address, :city_id, :witness_type, :language_id, :email,
                                      :phone, :can_climb_stairs, :special_needs, :requires_seminar, :concept_id, :free_text,
                                      :is_of_special_population)
    end
end
