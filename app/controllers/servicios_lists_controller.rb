class ServiciosListsController < ApplicationController
  before_action :set_servicios_list, only: [:show, :edit, :update, :destroy]

  # GET /servicios_lists
  # GET /servicios_lists.json
  def index
    @servicios = Servicio.all
    @servicios_lists = ServiciosList.all
  end

  # GET /servicios_lists/1
  # GET /servicios_lists/1.json
  def show
  end

  # GET /servicios_lists/new
  def new
    @servicios_list = ServiciosList.new
  end

  # GET /servicios_lists/1/edit
  def edit
  end

  # POST /servicios_lists
  # POST /servicios_lists.json
  def create
    @servicios_list = ServiciosList.new(servicios_list_params)

    respond_to do |format|
      if @servicios_list.save
        format.html { redirect_to @servicios_list, notice: 'Servicios list was successfully created.' }
        format.json { render :show, status: :created, location: @servicios_list }
      else
        format.html { render :new }
        format.json { render json: @servicios_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicios_lists/1
  # PATCH/PUT /servicios_lists/1.json
  def update
    respond_to do |format|
      if @servicios_list.update(servicios_list_params)
        format.html { redirect_to @servicios_list, notice: 'Servicios list was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicios_list }
      else
        format.html { render :edit }
        format.json { render json: @servicios_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios_lists/1
  # DELETE /servicios_lists/1.json
  def destroy
    @servicios_list.destroy
    respond_to do |format|
      format.html { redirect_to servicios_lists_url, notice: 'Servicios list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicios_list
      @servicios_list = ServiciosList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicios_list_params
      params.require(:servicios_list).permit(:servicio, :descripcion, :servicio_id)
    end
end
