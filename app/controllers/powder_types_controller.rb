class PowderTypesController < ApplicationController
  before_action :set_powder_type, only: [:show, :edit, :update, :destroy]

  # GET /powder_types
  # GET /powder_types.json
  def index
    @powder_types = PowderType.all
  end

  # GET /powder_types/1
  # GET /powder_types/1.json
  def show
  end

  # GET /powder_types/new
  def new
    @powder_type = PowderType.new
  end

  # GET /powder_types/1/edit
  def edit
  end

  # POST /powder_types
  # POST /powder_types.json
  def create
    @powder_type = PowderType.new(powder_type_params)

    respond_to do |format|
      if @powder_type.save
        format.html { redirect_to @powder_type, notice: 'Powder type was successfully created.' }
        format.json { render :show, status: :created, location: @powder_type }
      else
        format.html { render :new }
        format.json { render json: @powder_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powder_types/1
  # PATCH/PUT /powder_types/1.json
  def update
    respond_to do |format|
      if @powder_type.update(powder_type_params)
        format.html { redirect_to @powder_type, notice: 'Powder type was successfully updated.' }
        format.json { render :show, status: :ok, location: @powder_type }
      else
        format.html { render :edit }
        format.json { render json: @powder_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powder_types/1
  # DELETE /powder_types/1.json
  def destroy
    @powder_type.destroy
    respond_to do |format|
      format.html { redirect_to powder_types_url, notice: 'Powder type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powder_type
      @powder_type = PowderType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powder_type_params
      params.require(:powder_type).permit(:name)
    end
end
