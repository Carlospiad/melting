class SealCodesController < ApplicationController
  before_action :set_seal_code, only: [:show, :edit, :update, :destroy]

  # GET /seal_codes
  # GET /seal_codes.json
  def index
    @seal_codes = SealCode.all
    @branch = Branch.all
  end

  # GET /seal_codes/1
  # GET /seal_codes/1.json
  def show
    @branch = Branch.all
  end

  # GET /seal_codes/new
  def new
    @seal_code = SealCode.new
  end

  # GET /seal_codes/1/edit
  def edit

  end

  # POST /seal_codes
  # POST /seal_codes.json
  def create
    @seal_code = SealCode.new(seal_code_params)

    respond_to do |format|
      if @seal_code.save
        format.html { redirect_to @seal_code, notice: 'Seal code was successfully created.' }
        format.json { render :show, status: :created, location: @seal_code }
      else
        format.html { render :new }
        format.json { render json: @seal_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seal_codes/1
  # PATCH/PUT /seal_codes/1.json
  def update
    respond_to do |format|
      if @seal_code.update(seal_code_params)
        format.html { redirect_to @seal_code, notice: 'Seal code was successfully updated.' }
        format.json { render :show, status: :ok, location: @seal_code }
      else
        format.html { render :edit }
        format.json { render json: @seal_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seal_codes/1
  # DELETE /seal_codes/1.json
  def destroy
    @seal_code.destroy
    respond_to do |format|
      format.html { redirect_to seal_codes_url, notice: 'Seal code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seal_code
      @seal_code = SealCode.find(params[:id])


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seal_code_params
      params.require(:seal_code).permit(:from_branch, :to_branch, :date, :barcode, :received_by, :supposely_contains, :goldreport_id)
    end
end
