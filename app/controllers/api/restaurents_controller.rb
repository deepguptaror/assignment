class RestaurentsController < ApplicationController
  before_action :set_restaurent, only: [:show, :edit, :update, :destroy]
  

  # GET /restaurents
  # GET /restaurents.json
  def index
    #@restaurents = Restaurent.all
    @restaurents = Restaurent.get_all_restaurents
    respond_to do |format|    
      format.json { render json: @restaurents }
    end
  end

  # GET /restaurents/1
  # GET /restaurents/1.json
  def show
  end

  # GET /restaurents/new
  def new
    @restaurent = Restaurent.new
  end

  # GET /restaurents/1/edit
  def edit
  end

  # POST /restaurents
  # POST /restaurents.json
  def create
    @restaurent = Restaurent.new(restaurent_params)

    respond_to do |format|
      if @restaurent.save
        format.html { redirect_to @restaurent, notice: 'Restaurent was successfully created.' }
        format.json { render :show, status: :created, location: @restaurent }
      else
        format.html { render :new }
        format.json { render json: @restaurent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurents/1
  # PATCH/PUT /restaurents/1.json
  def update
    respond_to do |format|
      if @restaurent.update(restaurent_params)
        format.html { redirect_to @restaurent, notice: 'Restaurent was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurent }
      else
        format.html { render :edit }
        format.json { render json: @restaurent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurents/1
  # DELETE /restaurents/1.json
  def destroy
    @restaurent.destroy
    respond_to do |format|
      format.html { redirect_to restaurents_url, notice: 'Restaurent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurent
      @restaurent = Restaurent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurent_params
      params.fetch(:restaurent, {})
    end
end
