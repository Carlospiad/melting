require 'test_helper'

class GoldReportsControllerTest < ActionController::TestCase
  setup do
    @gold_report = gold_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gold_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gold_report" do
    assert_difference('GoldReport.count') do
      post :create, gold_report: { assistants_id: @gold_report.assistants_id, bought_10k_weight: @gold_report.bought_10k_weight, bought_14k_weight: @gold_report.bought_14k_weight, bought_18k_weight: @gold_report.bought_18k_weight, bought_capital: @gold_report.bought_capital, bought_listed_total_weight: @gold_report.bought_listed_total_weight, bought_other_weigth: @gold_report.bought_other_weigth, bought_saved_weight: @gold_report.bought_saved_weight, bought_stone_weight: @gold_report.bought_stone_weight, bought_with_diamonds_weight: @gold_report.bought_with_diamonds_weight, branch_id: @gold_report.branch_id, comments: @gold_report.comments, container_qty: @gold_report.container_qty, end_date: @gold_report.end_date, export_real_weight: @gold_report.export_real_weight, pawned_capital: @gold_report.pawned_capital, pawns_10k_weight: @gold_report.pawns_10k_weight, pawns_14k_weight: @gold_report.pawns_14k_weight, pawns_18k_weight: @gold_report.pawns_18k_weight, pawns_listed_total_weight: @gold_report.pawns_listed_total_weight, pawns_other_weight: @gold_report.pawns_other_weight, pawns_saved_weight: @gold_report.pawns_saved_weight, pawns_stone_weight: @gold_report.pawns_stone_weight, pawns_with_diamonds_weight: @gold_report.pawns_with_diamonds_weight }
    end

    assert_redirected_to gold_report_path(assigns(:gold_report))
  end

  test "should show gold_report" do
    get :show, id: @gold_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gold_report
    assert_response :success
  end

  test "should update gold_report" do
    patch :update, id: @gold_report, gold_report: { assistants_id: @gold_report.assistants_id, bought_10k_weight: @gold_report.bought_10k_weight, bought_14k_weight: @gold_report.bought_14k_weight, bought_18k_weight: @gold_report.bought_18k_weight, bought_capital: @gold_report.bought_capital, bought_listed_total_weight: @gold_report.bought_listed_total_weight, bought_other_weigth: @gold_report.bought_other_weigth, bought_saved_weight: @gold_report.bought_saved_weight, bought_stone_weight: @gold_report.bought_stone_weight, bought_with_diamonds_weight: @gold_report.bought_with_diamonds_weight, branch_id: @gold_report.branch_id, comments: @gold_report.comments, container_qty: @gold_report.container_qty, end_date: @gold_report.end_date, export_real_weight: @gold_report.export_real_weight, pawned_capital: @gold_report.pawned_capital, pawns_10k_weight: @gold_report.pawns_10k_weight, pawns_14k_weight: @gold_report.pawns_14k_weight, pawns_18k_weight: @gold_report.pawns_18k_weight, pawns_listed_total_weight: @gold_report.pawns_listed_total_weight, pawns_other_weight: @gold_report.pawns_other_weight, pawns_saved_weight: @gold_report.pawns_saved_weight, pawns_stone_weight: @gold_report.pawns_stone_weight, pawns_with_diamonds_weight: @gold_report.pawns_with_diamonds_weight }
    assert_redirected_to gold_report_path(assigns(:gold_report))
  end

  test "should destroy gold_report" do
    assert_difference('GoldReport.count', -1) do
      delete :destroy, id: @gold_report
    end

    assert_redirected_to gold_reports_path
  end
end
