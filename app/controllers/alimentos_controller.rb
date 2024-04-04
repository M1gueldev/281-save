class AlimentosController < ApplicationController
  before_action :set_alimento, only: %i[ show edit update destroy ]

  # GET /alimentos or /alimentos.json
  def index
    @alimentos = Alimento.all
  end

  # GET /alimentos/1 or /alimentos/1.json
  def show
  end

  # GET /alimentos/new
  def new
    @alimento = Alimento.new
  end

  # GET /alimentos/1/edit
  def edit
  end

  # POST /alimentos or /alimentos.json
  def create
    @alimento = Alimento.new(alimento_params)

    respond_to do |format|
      if @alimento.save
        format.html { redirect_to alimento_url(@alimento), notice: "Alimento was successfully created." }
        format.json { render :show, status: :created, location: @alimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alimentos/1 or /alimentos/1.json
  def update
    respond_to do |format|
      if @alimento.update(alimento_params)
        format.html { redirect_to alimento_url(@alimento), notice: "Alimento was successfully updated." }
        format.json { render :show, status: :ok, location: @alimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alimentos/1 or /alimentos/1.json
  def destroy
    @alimento.destroy

    respond_to do |format|
      format.html { redirect_to alimentos_url, notice: "Alimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimento
      @alimento = Alimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alimento_params
      params.require(:alimento).permit(:name, :description, :quantity)
    end
end
