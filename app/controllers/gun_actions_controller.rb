class GunActionsController < ApplicationController
  before_action :set_gun_action, only: [:show, :edit, :update, :destroy]

  # GET /gun_actions
  # GET /gun_actions.json
  def index
    @gun_actions = GunAction.all
  end

  # GET /gun_actions/1
  # GET /gun_actions/1.json
  def show
  end

  # GET /gun_actions/new
  def new
    @gun_action = GunAction.new
  end

  # GET /gun_actions/1/edit
  def edit
  end

  # POST /gun_actions
  # POST /gun_actions.json
  def create
    @gun_action = GunAction.new(gun_action_params)

    respond_to do |format|
      if @gun_action.save
        format.html { redirect_to @gun_action, notice: 'Gun action was successfully created.' }
        format.json { render :show, status: :created, location: @gun_action }
      else
        format.html { render :new }
        format.json { render json: @gun_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gun_actions/1
  # PATCH/PUT /gun_actions/1.json
  def update
    respond_to do |format|
      if @gun_action.update(gun_action_params)
        format.html { redirect_to @gun_action, notice: 'Gun action was successfully updated.' }
        format.json { render :show, status: :ok, location: @gun_action }
      else
        format.html { render :edit }
        format.json { render json: @gun_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gun_actions/1
  # DELETE /gun_actions/1.json
  def destroy
    @gun_action.destroy
    respond_to do |format|
      format.html { redirect_to gun_actions_url, notice: 'Gun action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gun_action
      @gun_action = GunAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gun_action_params
      params.require(:gun_action).permit(:action_type)
    end
end
