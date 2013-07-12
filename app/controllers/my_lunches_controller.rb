class MyLunchesController < ApplicationController
  before_action :set_my_lunch, only: [:show, :edit, :update, :destroy]

  # GET /my_lunches
  # GET /my_lunches.json
  def index
    @my_lunches = MyLunch.all
  end

  # GET /my_lunches/1
  # GET /my_lunches/1.json
  def show
  end

  # GET /my_lunches/new
  def new
    @my_lunch = MyLunch.new
  end

  # GET /my_lunches/1/edit
  def edit
  end

  # POST /my_lunches
  # POST /my_lunches.json
  def create
    @my_lunch = MyLunch.new(my_lunch_params)

    respond_to do |format|
      if @my_lunch.save
        format.html { redirect_to @my_lunch, notice: 'My lunch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @my_lunch }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_lunches/1
  # PATCH/PUT /my_lunches/1.json
  def update
    respond_to do |format|
      if @my_lunch.update(my_lunch_params)
        format.html { redirect_to @my_lunch, notice: 'My lunch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_lunches/1
  # DELETE /my_lunches/1.json
  def destroy
    @my_lunch.destroy
    respond_to do |format|
      format.html { redirect_to my_lunches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_lunch
      @my_lunch = MyLunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_lunch_params
      params.require(:my_lunch).permit(:meal, :bu, :cost)
    end
end
