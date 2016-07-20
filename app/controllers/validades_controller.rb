class ValidadesController < ApplicationController
  before_action :set_validade, only: [:show, :edit, :update, :destroy]

  # GET /validades
  # GET /validades.json
  def index
    @validades = Validade.all
  end

  # GET /validades/1
  # GET /validades/1.json
  def show
  end

  # GET /validades/new
  def new
    @validade = Validade.new
  end

  # GET /validades/1/edit
  def edit
  end

  # POST /validades
  # POST /validades.json
  def create
    @validade = Validade.new(validade_params)

    respond_to do |format|
      if @validade.save
        format.html { redirect_to @validade, notice: 'Validade was successfully created.' }
        format.json { render :show, status: :created, location: @validade }
      else
        format.html { render :new }
        format.json { render json: @validade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validades/1
  # PATCH/PUT /validades/1.json
  def update
    respond_to do |format|
      if @validade.update(validade_params)
        format.html { redirect_to @validade, notice: 'Validade was successfully updated.' }
        format.json { render :show, status: :ok, location: @validade }
      else
        format.html { render :edit }
        format.json { render json: @validade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validades/1
  # DELETE /validades/1.json
  def destroy
    @validade.destroy
    respond_to do |format|
      format.html { redirect_to validades_url, notice: 'Validade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validade
      @validade = Validade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def validade_params
      params.require(:validade).permit(:user_id, :produto_id, :validade)
    end
end
