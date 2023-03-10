class OrphansController < ApplicationController
  before_action :set_orphan, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]


  # GET /orphans or /orphans.json
  def index
    #raise
    @orphans = Orphan.all.order(id: 'desc').page params[:page]
    @users = User.all
  end

  # GET /orphans/1 or /orphans/1.json
  def show
  end

  # GET /orphans/new
  def new
    @orphan = Orphan.new
    @hostparents = Hostparent.all.order(name: 'asc').page
    @originalparents = Originalparent.all.order(name: 'asc').page
  end

  # GET /orphans/1/edit
  def edit
  end

  # POST /orphans or /orphans.json
  def create
    #raise
    @orphan = Orphan.new(orphan_params)

  #  @orphan = current_user.orphans.build(orphan_params)


    respond_to do |format|
      if @orphan.save
        format.html { redirect_to orphan_url(@orphan), notice: "L'orphelin a été bien enregistré." }
        format.json { render :show, status: :created, location: @orphan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orphan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orphans/1 or /orphans/1.json
  def update
  respond_to do |format|
    if @orphan.update(orphan_params)
      format.html { redirect_to orphan_url(@orphan), notice: "Les informations de cet orphelin ont été modifées." }
      format.json { render :show, status: :ok, location: @orphan }
    else
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @orphan.errors, status: :unprocessable_entity }
    end
  end
end

  # DELETE /orphans/1 or /orphans/1.json
  def destroy
    @orphan.destroy

    respond_to do |format|
      format.html { redirect_to orphans_url, notice: "Cet orphelin a été supprimé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orphan
      @orphan = Orphan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orphan_params
      params.require(:orphan).permit(:name, :description, :age, :image, :sex, :image, :image_cache, :originalparent_id, :hostparent_id)
end
end
