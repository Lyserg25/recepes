class RecepesController < ApplicationController
  before_action :set_recepe, only: [:show, :edit, :update, :destroy, :rate]
	helper_method :list_ingredients

  # GET /recepes
  # GET /recepes.json
  def index
    @recepes = Recepe.all
  end

  # GET /recepes/1
  # GET /recepes/1.json
  def show
  end

  # GET /recepes/new
  def new
    @recepe = Recepe.new
  end

  # GET /recepes/1/edit
  def edit
  end

	def rate
		@is_rating = true
	end

  # POST /recepes
  # POST /recepes.json
  def create
    @recepe = Recepe.new(recepe_params)

    respond_to do |format|
      if @recepe.save
        format.html { redirect_to @recepe, notice: 'Recepe was successfully created.' }
        format.json { render :show, status: :created, location: @recepe }
      else
        format.html { render :new }
        format.json { render json: @recepe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recepes/1
  # PATCH/PUT /recepes/1.json
  def update
    respond_to do |format|
      if @recepe.update(recepe_params)
        format.html { redirect_to @recepe, notice: 'Recepe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recepe }
      else
        format.html { render :edit }
        format.json { render json: @recepe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recepes/1
  # DELETE /recepes/1.json
  def destroy
    @recepe.destroy
    respond_to do |format|
      format.html { redirect_to recepes_url, notice: 'Recepe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recepe
      @recepe = Recepe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepe_params
      params.require(:recepe).permit(:title, :category, :people, :difficulty, :duration, :ingredients, :preparation, :tag, :rating)
    end
end
