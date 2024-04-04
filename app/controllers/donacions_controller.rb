class DonacionsController < ApplicationController
  before_action :set_donacion, only: %i[ show edit update destroy ]

  # GET /donacions or /donacions.json
  def index
    @donacions = Donacion.all
  end

  # GET /donacions/1 or /donacions/1.json
  def show
  end

  # GET /donacions/new
  def new
    @donacion = Donacion.new
  end

  # GET /donacions/1/edit
  def edit
  end

  # POST /donacions or /donacions.json
  def create
    @donacion = Donacion.new(donacion_params)

    respond_to do |format|
      if @donacion.save
        format.html { redirect_to donacion_url(@donacion), notice: "Donacion was successfully created." }
        format.json { render :show, status: :created, location: @donacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @donacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donacions/1 or /donacions/1.json
  def update
    respond_to do |format|
      if @donacion.update(donacion_params)
        format.html { redirect_to donacion_url(@donacion), notice: "Donacion was successfully updated." }
        format.json { render :show, status: :ok, location: @donacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @donacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donacions/1 or /donacions/1.json
  def destroy
    @donacion.destroy

    respond_to do |format|
      format.html { redirect_to donacions_url, notice: "Donacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donacion
      @donacion = Donacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donacion_params
      params.require(:donacion).permit(:producto_id, :alimento_id, :solicitud_id)
    end
end
