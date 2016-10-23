class IngredientsEntriesController < ApplicationController
  before_action :set_ingredients_entry, only: [:show, :edit, :update, :destroy]

  # GET /ingredients_entries
  # GET /ingredients_entries.json
  def index
    @ingredients_entries = IngredientsEntry.all
  end

  # GET /ingredients_entries/1
  # GET /ingredients_entries/1.json
  def show
  end

  # GET /ingredients_entries/new
  def new
    @ingredients_entry = IngredientsEntry.new
  end

  # GET /ingredients_entries/1/edit
  def edit
  end

  # POST /ingredients_entries
  # POST /ingredients_entries.json
  def create
    @ingredients_entry = IngredientsEntry.new(ingredients_entry_params)

    respond_to do |format|
      if @ingredients_entry.save
        format.html { redirect_to @ingredients_entry, notice: 'Ingredients entry was successfully created.' }
        format.json { render :show, status: :created, location: @ingredients_entry }
      else
        format.html { render :new }
        format.json { render json: @ingredients_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients_entries/1
  # PATCH/PUT /ingredients_entries/1.json
  def update
    respond_to do |format|
      if @ingredients_entry.update(ingredients_entry_params)
        format.html { redirect_to @ingredients_entry, notice: 'Ingredients entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredients_entry }
      else
        format.html { render :edit }
        format.json { render json: @ingredients_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients_entries/1
  # DELETE /ingredients_entries/1.json
  def destroy
    @ingredients_entry.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_entries_url, notice: 'Ingredients entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredients_entry
      @ingredients_entry = IngredientsEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredients_entry_params
      params.require(:ingredients_entry).permit(:recepe_id, :ingredient)
    end
end
