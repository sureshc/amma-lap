class ChildPicksController < ApplicationController
  before_action :set_child_pick, only: [:show, :edit, :update, :destroy]

  # GET /child_picks
  # GET /child_picks.json
  def index
    @child_picks = ChildPick.all
  end

  # GET /child_picks/1
  # GET /child_picks/1.json
  def show
  end

  # GET /child_picks/new
  def new
    @child_pick = ChildPick.new
  end

  # GET /child_picks/1/edit
  def edit
  end

  # POST /child_picks
  # POST /child_picks.json
  def create
    @child_pick = ChildPick.new(child_pick_params)

    respond_to do |format|
      if @child_pick.save
        format.html { redirect_to @child_pick, notice: 'Child pick was successfully created.' }
        format.json { render :show, status: :created, location: @child_pick }
      else
        format.html { render :new }
        format.json { render json: @child_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_picks/1
  # PATCH/PUT /child_picks/1.json
  def update
    respond_to do |format|
      if @child_pick.update(child_pick_params)
        format.html { redirect_to @child_pick, notice: 'Child pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_pick }
      else
        format.html { render :edit }
        format.json { render json: @child_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_picks/1
  # DELETE /child_picks/1.json
  def destroy
    @child_pick.destroy
    respond_to do |format|
      format.html { redirect_to child_picks_url, notice: 'Child pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_pick
      @child_pick = ChildPick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_pick_params
      params.require(:child_pick).permit(:child_id, :picked)
    end
end
