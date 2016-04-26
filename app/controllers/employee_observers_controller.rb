class EmployeeObserversController < ApplicationController
  before_action :set_employee_observer, only: [:show, :edit, :update, :destroy]

  # GET /employee_observers
  # GET /employee_observers.json
  def index
    @employee_observers = EmployeeObserver.all
  end

  # GET /employee_observers/1
  # GET /employee_observers/1.json
  def show
  end

  # GET /employee_observers/new
  def new
    @employee_observer = EmployeeObserver.new
  end

  # GET /employee_observers/1/edit
  def edit
  end

  # POST /employee_observers
  # POST /employee_observers.json
  def create
    @employee_observer = EmployeeObserver.new(employee_observer_params)

    respond_to do |format|
      if @employee_observer.save
        format.html { redirect_to @employee_observer, notice: 'Employee observer was successfully created.' }
        format.json { render :show, status: :created, location: @employee_observer }
      else
        format.html { render :new }
        format.json { render json: @employee_observer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_observers/1
  # PATCH/PUT /employee_observers/1.json
  def update
    respond_to do |format|
      if @employee_observer.update(employee_observer_params)
        format.html { redirect_to @employee_observer, notice: 'Employee observer was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_observer }
      else
        format.html { render :edit }
        format.json { render json: @employee_observer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_observers/1
  # DELETE /employee_observers/1.json
  def destroy
    @employee_observer.destroy
    respond_to do |format|
      format.html { redirect_to employee_observers_url, notice: 'Employee observer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_observer
      @employee_observer = EmployeeObserver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_observer_params
      params.require(:employee_observer).permit(:region_id, :first_name, :last_name)
    end
end
