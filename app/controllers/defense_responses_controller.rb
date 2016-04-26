class DefenseResponsesController < ApplicationController
  before_action :set_defense_response, only: [:show, :edit, :update, :destroy]

  # GET /defense_responses
  # GET /defense_responses.json
  def index
    @defense_responses = DefenseResponse.all
  end

  # GET /defense_responses/1
  # GET /defense_responses/1.json
  def show
  end

  # GET /defense_responses/new
  def new
    @defense_response = DefenseResponse.new
  end

  # GET /defense_responses/1/edit
  def edit
  end

  # POST /defense_responses
  # POST /defense_responses.json
  def create
    @defense_response = DefenseResponse.new(defense_response_params)

    respond_to do |format|
      if @defense_response.save
        format.html { redirect_to @defense_response, notice: 'Defense response was successfully created.' }
        format.json { render :show, status: :created, location: @defense_response }
      else
        format.html { render :new }
        format.json { render json: @defense_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defense_responses/1
  # PATCH/PUT /defense_responses/1.json
  def update
    respond_to do |format|
      if @defense_response.update(defense_response_params)
        format.html { redirect_to @defense_response, notice: 'Defense response was successfully updated.' }
        format.json { render :show, status: :ok, location: @defense_response }
      else
        format.html { render :edit }
        format.json { render json: @defense_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defense_responses/1
  # DELETE /defense_responses/1.json
  def destroy
    @defense_response.destroy
    respond_to do |format|
      format.html { redirect_to defense_responses_url, notice: 'Defense response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defense_response
      @defense_response = DefenseResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defense_response_params
      params.require(:defense_response).permit(:observation_id, :defense_id, :response)
    end
end
