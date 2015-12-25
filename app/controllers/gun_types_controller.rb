class GunTypesController < ApplicationController
  before_action :set_gun_type, only: [:show, :edit, :update, :destroy]

  # GET /gun_types
  # GET /gun_types.json
  def index
    @gun_types = GunType.all
  end

  # GET /gun_types/1
  # GET /gun_types/1.json
  def show
  end

  # GET /gun_types/new
  def new
    @gun_type = GunType.new
  end

  # GET /gun_types/1/edit
  def edit
  end

  # POST /gun_types
  # POST /gun_types.json
  def create
    @gun_type = GunType.new(gun_type_params)

    respond_to do |format|
      if @gun_type.save
        format.html { redirect_to @gun_type, notice: 'Gun type was successfully created.' }
        format.json { render :show, status: :created, location: @gun_type }
      else
        format.html { render :new }
        format.json { render json: @gun_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gun_types/1
  # PATCH/PUT /gun_types/1.json
  def update
    respond_to do |format|
      if @gun_type.update(gun_type_params)
        format.html { redirect_to @gun_type, notice: 'Gun type was successfully updated.' }
        format.json { render :show, status: :ok, location: @gun_type }
      else
        format.html { render :edit }
        format.json { render json: @gun_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gun_types/1
  # DELETE /gun_types/1.json
  def destroy
    @gun_type.destroy
    respond_to do |format|
      format.html { redirect_to gun_types_url, notice: 'Gun type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gun_type
      @gun_type = GunType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gun_type_params
      params.require(:gun_type).permit(:name)
    end
end
