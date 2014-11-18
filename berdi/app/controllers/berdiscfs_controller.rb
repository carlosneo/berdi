class BerdiscfsController < ApplicationController
  before_action :set_berdiscf, only: [:show, :edit, :update, :destroy]

  # GET /berdiscfs
  # GET /berdiscfs.json
  def index
    @berdiscfs = Berdiscf.all
  end

  # GET /berdiscfs/1
  # GET /berdiscfs/1.json
  def show
  end

  # GET /berdiscfs/new
  def new
    @berdiscf = Berdiscf.new
  end

  # GET /berdiscfs/1/edit
  def edit
  end

  # POST /berdiscfs
  # POST /berdiscfs.json
  def create
    @berdiscf = Berdiscf.new(berdiscf_params)

    respond_to do |format|
      if @berdiscf.save
        format.html { redirect_to @berdiscf, notice: 'Berdiscf was successfully created.' }
        format.json { render :show, status: :created, location: @berdiscf }
      else
        format.html { render :new }
        format.json { render json: @berdiscf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /berdiscfs/1
  # PATCH/PUT /berdiscfs/1.json
  def update
    respond_to do |format|
      if @berdiscf.update(berdiscf_params)
        format.html { redirect_to @berdiscf, notice: 'Berdiscf was successfully updated.' }
        format.json { render :show, status: :ok, location: @berdiscf }
      else
        format.html { render :edit }
        format.json { render json: @berdiscf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berdiscfs/1
  # DELETE /berdiscfs/1.json
  def destroy
    @berdiscf.destroy
    respond_to do |format|
      format.html { redirect_to berdiscfs_url, notice: 'Berdiscf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_berdiscf
      @berdiscf = Berdiscf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def berdiscf_params
      params[:berdiscf]
    end
end
