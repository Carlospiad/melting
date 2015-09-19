class GoldReportsController < ApplicationController
  before_action :set_gold_report, only: [:show, :edit, :update, :destroy, :askapproval]


  # GET /gold_reports
  # GET /gold_reports.json
  def index
    @gold_reports = GoldReport.all
  end

  # GET /gold_reports/1
  # GET /gold_reports/1.json
  def show
  end

  # GET /gold_reports/new
  def new
    @gold_report = GoldReport.new
  end

  # GET /gold_reports/1/edit
  def edit
  end

  def preapproval
    @gold_report = GoldReport.find(params[:id])
    @gold_report.preapprove
    return redirect_to gold_reports_path
  end

  # POST /gold_reports
  # POST /gold_reports.json
  def create
    @gold_report = GoldReport.new(gold_report_params)

    respond_to do |format|
      if @gold_report.save
        format.html { redirect_to @gold_report, notice: 'Gold report was successfully created.' }
        format.json { render :show, status: :created, location: @gold_report }
      else
        format.html { render :new }
        format.json { render json: @gold_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gold_reports/1
  # PATCH/PUT /gold_reports/1.json
  def update
    respond_to do |format|
      if @gold_report.update(gold_report_params)
        format.html { redirect_to @gold_report, notice: 'Gold report was successfully updated.' }
        format.json { render :show, status: :ok, location: @gold_report }
      else
        format.html { render :edit }
        format.json { render json: @gold_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gold_reports/1
  # DELETE /gold_reports/1.json
  def destroy
    @gold_report.destroy
    respond_to do |format|
      format.html { redirect_to gold_reports_url, notice: 'Gold report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gold_report
      @gold_report = GoldReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gold_report_params
      params.require(:gold_report).permit(:end_date, :branch_id, :assistants_id, :pawned_capital, :bought_capital, :export_real_weight, :container_qty, :pawns_listed_total_weight, :pawns_10k_weight, :pawns_14k_weight, :pawns_18k_weight, :pawns_with_diamonds_weight, :pawns_saved_weight, :pawns_stone_weight, :pawns_other_weight, :bought_listed_total_weight, :bought_10k_weight, :bought_14k_weight, :bought_18k_weight, :bought_with_diamonds_weight, :bought_saved_weight, :bought_stone_weight, :bought_other_weigth, :comments)
    end
end
