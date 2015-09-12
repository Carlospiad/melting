require 'test_helper'

class SealCodesControllerTest < ActionController::TestCase
  setup do
    @seal_code = seal_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seal_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seal_code" do
    assert_difference('SealCode.count') do
      post :create, seal_code: { barcode: @seal_code.barcode, date: @seal_code.date, from_branch_id: @seal_code.from_branch_id, goldreport_id: @seal_code.goldreport_id, received_by: @seal_code.received_by, silverreport_id: @seal_code.silverreport_id, supposely_contains: @seal_code.supposely_contains, to_branch_id: @seal_code.to_branch_id }
    end

    assert_redirected_to seal_code_path(assigns(:seal_code))
  end

  test "should show seal_code" do
    get :show, id: @seal_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seal_code
    assert_response :success
  end

  test "should update seal_code" do
    patch :update, id: @seal_code, seal_code: { barcode: @seal_code.barcode, date: @seal_code.date, from_branch_id: @seal_code.from_branch_id, goldreport_id: @seal_code.goldreport_id, received_by: @seal_code.received_by, silverreport_id: @seal_code.silverreport_id, supposely_contains: @seal_code.supposely_contains, to_branch_id: @seal_code.to_branch_id }
    assert_redirected_to seal_code_path(assigns(:seal_code))
  end

  test "should destroy seal_code" do
    assert_difference('SealCode.count', -1) do
      delete :destroy, id: @seal_code
    end

    assert_redirected_to seal_codes_path
  end
end
