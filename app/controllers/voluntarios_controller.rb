class VoluntariosController < ApplicationController
  before_action :set_voluntario, only: %i[ show edit update destroy ]

  # GET /voluntarios or /voluntarios.json
  def index
    @voluntarios = Voluntario.all
  end

  # GET /voluntarios/1 or /voluntarios/1.json
  def show
  end

  # GET /voluntarios/new
  def new
    @voluntario = Voluntario.new
  end

  # GET /voluntarios/1/edit
  def edit
  end

  # POST /voluntarios or /voluntarios.json
  def create
    @voluntario = Voluntario.new(voluntario_params)

    respond_to do |format|
      if @voluntario.save
        format.html { redirect_to voluntario_url(@voluntario), notice: "Voluntario was successfully created." }
        format.json { render :show, status: :created, location: @voluntario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @voluntario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voluntarios/1 or /voluntarios/1.json
  def update
    respond_to do |format|
      if @voluntario.update(voluntario_params)
        format.html { redirect_to voluntario_url(@voluntario), notice: "Voluntario was successfully updated." }
        format.json { render :show, status: :ok, location: @voluntario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @voluntario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voluntarios/1 or /voluntarios/1.json
  def destroy
    @voluntario.destroy

    respond_to do |format|
      format.html { redirect_to voluntarios_url, notice: "Voluntario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntario
      @voluntario = Voluntario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def voluntario_params
      params.require(:voluntario).permit(:persona_id)
    end
end
