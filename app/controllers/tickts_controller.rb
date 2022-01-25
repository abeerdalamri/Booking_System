class TicktsController < ApplicationController
  before_action :set_tickt, only: %i[ show edit update destroy ]

  # GET /tickts or /tickts.json
  def index
    @tickts = Tickt.all
  end

  # GET /tickts/1 or /tickts/1.json
  def show
  end

  # GET /tickts/new
  def new
    @tickt = Tickt.new
  end

  # GET /tickts/1/edit
  def edit
  end

  # POST /tickts or /tickts.json
  def create
    @tickt = Tickt.new(tickt_params)

    respond_to do |format|
      if @tickt.save
        format.html { redirect_to tickt_url(@tickt), notice: "Tickt was successfully created." }
        format.json { render :show, status: :created, location: @tickt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tickt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickts/1 or /tickts/1.json
  def update
    respond_to do |format|
      if @tickt.update(tickt_params)
        format.html { redirect_to tickt_url(@tickt), notice: "Tickt was successfully updated." }
        format.json { render :show, status: :ok, location: @tickt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tickt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickts/1 or /tickts/1.json
  def destroy
    @tickt.destroy

    respond_to do |format|
      format.html { redirect_to tickts_url, notice: "Tickt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tickt
      @tickt = Tickt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tickt_params
      params.require(:tickt).permit(:name, :reference, :price)
    end
end
