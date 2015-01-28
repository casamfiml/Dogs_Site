class AutenticacionsController < ApplicationController
  before_action :set_autenticacion, only: [:show, :edit, :update, :destroy]

  # GET /autenticacions
  # GET /autenticacions.json
  def index
    @autenticacions = Autenticacion.all
  end

  # GET /autenticacions/1
  # GET /autenticacions/1.json
  def show
  end

  # GET /autenticacions/new
  def new
    @autenticacion = Autenticacion.new
  end

  # GET /autenticacions/1/edit
  def edit
  end

  # POST /autenticacions
  # POST /autenticacions.json
  def create
    @autenticacion = Autenticacion.new(autenticacion_params)

    respond_to do |format|
      if @autenticacion.save
        format.html { redirect_to @autenticacion, notice: 'Autenticacion was successfully created.' }
        format.json { render :show, status: :created, location: @autenticacion }
      else
        format.html { render :new }
        format.json { render json: @autenticacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autenticacions/1
  # PATCH/PUT /autenticacions/1.json
  def update
    respond_to do |format|
      if @autenticacion.update(autenticacion_params)
        format.html { redirect_to @autenticacion, notice: 'Autenticacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @autenticacion }
      else
        format.html { render :edit }
        format.json { render json: @autenticacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autenticacions/1
  # DELETE /autenticacions/1.json
  def destroy
    @autenticacion.destroy
    respond_to do |format|
      format.html { redirect_to autenticacions_url, notice: 'Autenticacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autenticacion
      @autenticacion = Autenticacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autenticacion_params
      params.require(:autenticacion).permit(:user, :crypted_password, :email)
    end
end
