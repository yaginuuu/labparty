class AttendsController < ApplicationController
  before_action :set_attend, only: [:show, :edit, :update, :destroy]

  # GET /attends
  # GET /attends.json
  def index
    @attends = Attend.all
  end

  # GET /attends/1
  # GET /attends/1.json
  def show
    @attend = Attend.new
  end

  # GET /attends/new
  def new
    # @party = Party.find(params[:id])
    @attend = Attend.new
  end

  # GET /attends/1/edit
  def edit
  end

  # POST /attends
  # POST /attends.json
  def create
    @attend = Attend.new(attend_params)

    respond_to do |format|
      if @attend.save
        format.html { redirect_to @attend, notice: '出欠情報を保存しました' }
        format.json { render action: 'show', status: :created, location: @attend }
      else
        format.html { render action: 'new' }
        format.json { render json: @attend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attends/1
  # PATCH/PUT /attends/1.json
  def update
    respond_to do |format|
      if @attend.update(attend_params)
        format.html { redirect_to @attend, notice: 'Attend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attends/1
  # DELETE /attends/1.json
  def destroy
    @attend.destroy
    respond_to do |format|
      format.html { redirect_to attends_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attend
      @attend = Attend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attend_params
      params.require(:attend).permit(:attend, :user_id, :party_id)
    end
end
