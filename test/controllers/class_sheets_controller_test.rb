require 'test_helper'

class ClassSheetsControllerTest < ActionController::TestCase
  setup do
    @class_sheet = class_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_sheet" do
    assert_difference('ClassSheet.count') do
      post :create, class_sheet: { classHours: @class_sheet.classHours, name: @class_sheet.name, venue: @class_sheet.venue }
    end

    assert_redirected_to class_sheet_path(assigns(:class_sheet))
  end

  test "should show class_sheet" do
    get :show, id: @class_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_sheet
    assert_response :success
  end

  test "should update class_sheet" do
    patch :update, id: @class_sheet, class_sheet: { classHours: @class_sheet.classHours, name: @class_sheet.name, venue: @class_sheet.venue }
    assert_redirected_to class_sheet_path(assigns(:class_sheet))
  end

  test "should destroy class_sheet" do
    assert_difference('ClassSheet.count', -1) do
      delete :destroy, id: @class_sheet
    end

    assert_redirected_to class_sheets_path
  end
end
