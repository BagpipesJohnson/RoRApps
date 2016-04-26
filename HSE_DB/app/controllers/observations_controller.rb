class ObservationsController < ApplicationController
  before_action :set_observation, only: [:show, :edit, :update, :destroy]

  # GET /observations
  # GET /observations.json
  def index
    @observations = Observation.all
  end

  # GET /observations/1
  # GET /observations/1.json
  def show
  end

  # GET /observations/new
  def new
    @observation = Observation.new
    create_empty_question_set
    create_empty_defense_set
    set_available_dropdown_values

  end

  # GET /observations/1/edit
  def edit
    set_available_dropdown_values
  end

  # POST /observations
  # POST /observations.json
  def create
    @observation = Observation.new(observation_params)
    
    respond_to do |format|
      if @observation.save
        format.html { redirect_to @observation, notice: 'Observation was successfully created.' }
        format.json { render :show, status: :created, location: @observation }
      else
        format.html { render :new }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observations/1
  # PATCH/PUT /observations/1.json
  def update

    respond_to do |format|
      if @observation.update(observation_params)
        format.html { redirect_to @observation, notice: 'Observation was successfully updated.' }
        format.json { render :show, status: :ok, location: @observation }
      else
        format.html { render :edit }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observations/1
  # DELETE /observations/1.json
  def destroy
    @observation.destroy
    respond_to do |format|
      format.html { redirect_to observations_url, notice: 'Observation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation
      @observation = Observation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observation_params
      params.require(:observation).permit(:description, :customer_id, :observation_date, :business_unit_id, :employee_observer_id, :region_id, :feedback_comments, :service_center_id, :observation_type_id,
        survey_question_responses_attributes: [:response, :observation_id, :id, :survey_question_id],
        defense_responses_attributes: [:response, :observation_id, :id, :defense_id])

    end

    def get_survey_quesiton_response_params
      survey_question_responses = Hash.new
      # for each question
      SurveyQuestion.all.collect.each do |q|
        #look up answer in hash if it exists
        if params.has_key? 'q_' + q.id.to_s
          #add response to hash of hashes
          survey_question_responses[q.id] = {:observation_id => @observation.id, :survey_question_id => q.id, :response => params['q_' + q.id.to_s]}
        end 
      end

      return survey_question_responses
    end

    def save_survey_question_responses(survey_question_responses_params)
      success = true

      survey_question_responses_params.each do |k, v|
        new_response = SurveyQuestionResponse.new(v)
        success = new_response.save and success
      end

    end

    def set_available_dropdown_values()
      @customers = Customer.all.collect{|c| [c.company_name, c.id]}
      @business_units = BusinessUnit.all.collect{|b| [b.description, b.id]}
      @employee_observers = EmployeeObserver.all.collect{|e| [e.first_name + " " + e.last_name, e.id]}
      @regions = Region.all.collect{|r| [r.description, r.id]} 
      @service_centers = ServiceCenter.all.collect{|s| [s.description, s.id]}
      @observation_types = ObservationType.all.collect{|o| [o.description, o.id]}

    end

    def create_empty_question_set()
      SurveyQuestion.all.collect.each do |q|
        @observation.survey_question_responses.new(survey_question_id: q.id)
      end
    end

    def create_empty_defense_set()
      Defense.all.collect.each do |d|
        @observation.defense_responses.new(defense_id: d.id)
      end
    end

end
