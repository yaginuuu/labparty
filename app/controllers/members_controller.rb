class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /attends
  # GET /attends.json
  def index
    @members = Member.all
  end

  # GET /attends/1
  # GET /attends/1.json
  def show
  end

  # GET /attends/new
  def new
    # @party = Party.find(params[:id])
    @member = Member.new
  end

  # GET /attends/1/edit
  def edit
  end

  # POST /attends
  # POST /attends.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: '出欠情報を保存しました' }
        format.json { render action: 'show', status: :created, location: @member }
      else
        format.html { render action: 'new' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attends/1
  # PATCH/PUT /attends/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @attend, notice: 'Attend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attends/1
  # DELETE /attends/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to attends_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:attend, :user_id, :party_id)
    end
end
