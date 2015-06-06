require 'test_helper'

class PermissionSheetsControllerTest < ActionController::TestCase
  setup do
    @permission_sheet = permission_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permission_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permission_sheet" do
    assert_difference('PermissionSheet.count') do
      post :create, permission_sheet: { name: @permission_sheet.name }
    end

    assert_redirected_to permission_sheet_path(assigns(:permission_sheet))
  end

  test "should show permission_sheet" do
    get :show, id: @permission_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permission_sheet
    assert_response :success
  end

  test "should update permission_sheet" do
    patch :update, id: @permission_sheet, permission_sheet: { name: @permission_sheet.name }
    assert_redirected_to permission_sheet_path(assigns(:permission_sheet))
  end

  test "should destroy permission_sheet" do
    assert_difference('PermissionSheet.count', -1) do
      delete :destroy, id: @permission_sheet
    end

    assert_redirected_to permission_sheets_path
  end
end
