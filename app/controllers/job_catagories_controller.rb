class JobCatagoriesController < ApplicationController
  before_action :set_job_catagory, only: [:show, :edit, :update, :destroy]

  # GET /job_catagories
  # GET /job_catagories.json
  def index
    @job_catagories = JobCatagory.all
  end

  # GET /job_catagories/1
  # GET /job_catagories/1.json
  def show
  end

  # GET /job_catagories/new
  def new
    @job_catagory = JobCatagory.new
  end

  # GET /job_catagories/1/edit
  def edit
  end

  # POST /job_catagories
  # POST /job_catagories.json
  def create
    @job_catagory = JobCatagory.new(job_catagory_params)

    respond_to do |format|
      if @job_catagory.save
        format.html { redirect_to @job_catagory, notice: 'Job catagory was successfully created.' }
        format.json { render :show, status: :created, location: @job_catagory }
      else
        format.html { render :new }
        format.json { render json: @job_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_catagories/1
  # PATCH/PUT /job_catagories/1.json
  def update
    respond_to do |format|
      if @job_catagory.update(job_catagory_params)
        format.html { redirect_to @job_catagory, notice: 'Job catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_catagory }
      else
        format.html { render :edit }
        format.json { render json: @job_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_catagories/1
  # DELETE /job_catagories/1.json
  def destroy
    @job_catagory.destroy
    respond_to do |format|
      format.html { redirect_to job_catagories_url, notice: 'Job catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_catagory
      @job_catagory = JobCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_catagory_params
      params.require(:job_catagory).permit(:name)
    end
end
