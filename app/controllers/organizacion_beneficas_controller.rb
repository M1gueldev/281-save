class OrganizacionBeneficasController < ApplicationController
  before_action :set_organizacion_benefica, only: %i[ show edit update destroy ]

  # GET /organizacion_beneficas or /organizacion_beneficas.json
  def index
    @organizacion_beneficas = OrganizacionBenefica.all
  end

  # GET /organizacion_beneficas/1 or /organizacion_beneficas/1.json
  def show
  end

  # GET /organizacion_beneficas/new
  def new
    @organizacion_benefica = OrganizacionBenefica.new
  end

  # GET /organizacion_beneficas/1/edit
  def edit
  end

  # POST /organizacion_beneficas or /organizacion_beneficas.json
  def create
    @organizacion_benefica = OrganizacionBenefica.new(organizacion_benefica_params)

    respond_to do |format|
      if @organizacion_benefica.save
        format.html { redirect_to organizacion_benefica_url(@organizacion_benefica), notice: "Organizacion benefica was successfully created." }
        format.json { render :show, status: :created, location: @organizacion_benefica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organizacion_benefica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizacion_beneficas/1 or /organizacion_beneficas/1.json
  def update
    respond_to do |format|
      if @organizacion_benefica.update(organizacion_benefica_params)
        format.html { redirect_to organizacion_benefica_url(@organizacion_benefica), notice: "Organizacion benefica was successfully updated." }
        format.json { render :show, status: :ok, location: @organizacion_benefica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organizacion_benefica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizacion_beneficas/1 or /organizacion_beneficas/1.json
  def destroy
    @organizacion_benefica.destroy

    respond_to do |format|
      format.html { redirect_to organizacion_beneficas_url, notice: "Organizacion benefica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizacion_benefica
      @organizacion_benefica = OrganizacionBenefica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organizacion_benefica_params
      params.require(:organizacion_benefica).permit(:nombre, :tipo, :latitud, :longitud, :email, :CI, :economica_id, :nro_de_cuenta)
    end
end
