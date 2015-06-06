require 'test_helper'

class CaringRecordsControllerTest < ActionController::TestCase
  setup do
    @caring_record = caring_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caring_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caring_record" do
    assert_difference('CaringRecord.count') do
      post :create, caring_record: { callback: @caring_record.callback, careDate: @caring_record.careDate, careMemberId: @caring_record.careMemberId, careMethod: @caring_record.careMethod, description: @caring_record.description, reasonsForLeaving: @caring_record.reasonsForLeaving, studentId: @caring_record.studentId }
    end

    assert_redirected_to caring_record_path(assigns(:caring_record))
  end

  test "should show caring_record" do
    get :show, id: @caring_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caring_record
    assert_response :success
  end

  test "should update caring_record" do
    patch :update, id: @caring_record, caring_record: { callback: @caring_record.callback, careDate: @caring_record.careDate, careMemberId: @caring_record.careMemberId, careMethod: @caring_record.careMethod, description: @caring_record.description, reasonsForLeaving: @caring_record.reasonsForLeaving, studentId: @caring_record.studentId }
    assert_redirected_to caring_record_path(assigns(:caring_record))
  end

  test "should destroy caring_record" do
    assert_difference('CaringRecord.count', -1) do
      delete :destroy, id: @caring_record
    end

    assert_redirected_to caring_records_path
  end
end
