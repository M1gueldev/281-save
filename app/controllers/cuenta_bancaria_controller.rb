class CuentaBancariaController < ApplicationController
  before_action :set_cuenta_bancarium, only: %i[ show edit update destroy ]

  # GET /cuenta_bancaria or /cuenta_bancaria.json
  def index
    @cuenta_bancaria = CuentaBancarium.all
  end

  # GET /cuenta_bancaria/1 or /cuenta_bancaria/1.json
  def show
  end

  # GET /cuenta_bancaria/new
  def new
    @cuenta_bancarium = CuentaBancarium.new
  end

  # GET /cuenta_bancaria/1/edit
  def edit
  end

  # POST /cuenta_bancaria or /cuenta_bancaria.json
  def create
    @cuenta_bancarium = CuentaBancarium.new(cuenta_bancarium_params)

    respond_to do |format|
      if @cuenta_bancarium.save
        format.html { redirect_to cuenta_bancarium_url(@cuenta_bancarium), notice: "Cuenta bancarium was successfully created." }
        format.json { render :show, status: :created, location: @cuenta_bancarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuenta_bancarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta_bancaria/1 or /cuenta_bancaria/1.json
  def update
    respond_to do |format|
      if @cuenta_bancarium.update(cuenta_bancarium_params)
        format.html { redirect_to cuenta_bancarium_url(@cuenta_bancarium), notice: "Cuenta bancarium was successfully updated." }
        format.json { render :show, status: :ok, location: @cuenta_bancarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuenta_bancarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta_bancaria/1 or /cuenta_bancaria/1.json
  def destroy
    @cuenta_bancarium.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_bancaria_url, notice: "Cuenta bancarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_bancarium
      @cuenta_bancarium = CuentaBancarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuenta_bancarium_params
      params.require(:cuenta_bancarium).permit(:number, :bank, :user)
    end
end
