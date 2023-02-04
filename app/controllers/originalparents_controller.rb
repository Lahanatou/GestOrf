class OriginalparentsController < ApplicationController
  before_action :set_originalparent, only: %i[ show edit update destroy ]

  # GET /originalparents or /originalparents.json
  def index
    @originalparents = Originalparent.all
  end

  # GET /originalparents/1 or /originalparents/1.json
  def show
  end

  # GET /originalparents/new
  def new
    @originalparent = Originalparent.new
  end

  # GET /originalparents/1/edit
  def edit
  end

  # POST /originalparents or /originalparents.json
  def create
    @originalparent = Originalparent.new(originalparent_params)

    respond_to do |format|
      if @originalparent.save
        format.html { redirect_to originalparent_url(@originalparent), notice: "Originalparent was successfully created." }
        format.json { render :show, status: :created, location: @originalparent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @originalparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /originalparents/1 or /originalparents/1.json
  def update
    respond_to do |format|
      if @originalparent.update(originalparent_params)
        format.html { redirect_to originalparent_url(@originalparent), notice: "Originalparent was successfully updated." }
        format.json { render :show, status: :ok, location: @originalparent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @originalparent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /originalparents/1 or /originalparents/1.json
  def destroy
    @originalparent.destroy

    respond_to do |format|
      format.html { redirect_to originalparents_url, notice: "Originalparent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_originalparent
      @originalparent = Originalparent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def originalparent_params
    #   params.fetch(:originalparent, {})
    # end
    def originalparent_params
      params.require(:originalparent).permit(:name, :description, :phone)
    end
end
