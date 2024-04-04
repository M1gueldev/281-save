class EconomicasController < ApplicationController
  before_action :set_economica, only: %i[ show edit update destroy ]

  # GET /economicas or /economicas.json
  def index
    @economicas = Economica.all
  end

  # GET /economicas/1 or /economicas/1.json
  def show
  end

  # GET /economicas/new
  def new
    @economica = Economica.new
  end

  # GET /economicas/1/edit
  def edit
  end

  # POST /economicas or /economicas.json
  def create
    @economica = Economica.new(economica_params)

    respond_to do |format|
      if @economica.save
        format.html { redirect_to economica_url(@economica), notice: "Economica was successfully created." }
        format.json { render :show, status: :created, location: @economica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @economica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economicas/1 or /economicas/1.json
  def update
    respond_to do |format|
      if @economica.update(economica_params)
        format.html { redirect_to economica_url(@economica), notice: "Economica was successfully updated." }
        format.json { render :show, status: :ok, location: @economica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @economica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economicas/1 or /economicas/1.json
  def destroy
    @economica.destroy

    respond_to do |format|
      format.html { redirect_to economicas_url, notice: "Economica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economica
      @economica = Economica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def economica_params
      params.require(:economica).permit(:description, :amount)
    end
end
