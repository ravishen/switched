class ChecksController < ApplicationController
  before_action :set_check, only: [:show, :edit, :update, :destroy]

  # GET /checks
  # GET /checks.json
  def index
    @checks = Check.all
  end

  # GET /checks/1
  # GET /checks/1.json
  def show
    request.headers["Content-Type"] # => "application/json"
    result =Check.friendly.find(params[:id]).combination.to_s

    response.headers['HEADER NAME'] = result

    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  # GET /checks/new
  def new
    response.headers['Access-Control-Allow-Origin'] = '*'
    @check = Check.new
  end

  # GET /checks/1/edit
  def edit

    if params[:pin1].present?
      @updated_value1 = params[:pin1]
      check = Check.friendly.find(params[:id])
      check.pin1 = @updated_value1
      check.save
    end
    if params[:pin2].present?
      @updated_value2 = params[:pin2]
      check = Check.friendly.find(params[:id])
      check.pin2 = @updated_value2
      check.save
    end
    if params[:pin3].present?
      @updated_value3 = params[:pin3]
      check = Check.friendly.find(params[:id])
      check.pin3 = @updated_value3
      check.save
    end
    if params[:pin4].present?
      @updated_value4 = params[:pin4]
      check = Check.friendly.find(params[:id])
      check.pin4 = @updated_value4
      check.save
    end




  end

  # POST /checks
  # POST /checks.json
  def create
    @check = Check.new(check_params)

    respond_to do |format|r
      if @check.save
        format.html { redirect_to @check, notice: 'Check was successfully created.' }
        format.json { render :show, status: :created, location: @check }
      else
        format.html { render :new }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checks/1
  # PATCH/PUT /checks/1.json
  def update
    respond_to do |format|
      if @check.update(check_params)
        format.html { redirect_to @check, notice: 'Check was successfully updated.' }
        format.json { render :show, status: :ok, location: @check }
      else
        format.html { render :edit }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checks/1
  # DELETE /checks/1.json
  def destroy
    @check.destroy
    respond_to do |format|
      format.html { redirect_to checks_url, notice: 'Check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check
      @check = Check.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_params
      params.require(:check).permit(:pin1, :pin2, :pin3, :pin4,:slug)
    end
end
