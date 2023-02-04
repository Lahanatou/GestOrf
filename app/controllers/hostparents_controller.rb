class HostparentsController < ApplicationController
  before_action :set_hostparent, only: %i[ show edit update destroy ]

  # GET /hostparents or /hostparents.json
  def index
    @hostparents = Hostparent.all
  end

  # GET /hostparents/1 or /hostparents/1.json
  def show
  end

  # GET /hostparents/new
  def new
    @hostparent = Hostparent.new
  end

  # GET /hostparents/1/edit
  def edit
  end

  # POST /hostparents or /hostparents.json
  def create
    @hostparent = Hostparent.new(hostparent_params)

    respond_to do |format|
      if @hostparent.save
        format.html { redirect_to hostparent_url(@hostparent), notice: "Hostparent was successfully created." }
        format.json { render :show, status: :created, location: @hostparent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hostparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostparents/1 or /hostparents/1.json
  def update
    respond_to do |format|
      if @hostparent.update(hostparent_params)
        format.html { redirect_to hostparent_url(@hostparent), notice: "Hostparent was successfully updated." }
        format.json { render :show, status: :ok, location: @hostparent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hostparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostparents/1 or /hostparents/1.json
  def destroy
    @hostparent.destroy

    respond_to do |format|
      format.html { redirect_to hostparents_url, notice: "Hostparent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostparent
      @hostparent = Hostparent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def hostparent_params
    #   params.fetch(:hostparent, {})
    # end
    def hostparent_params
      params.require(:hostparent).permit(:name, :adress, :phone)
    end
end
