require 'test_helper'

class SopsControllerTest < ActionController::TestCase
  setup do
    @sop = sops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sop" do
    assert_difference('Sop.count') do
      post :create, sop: { SOP_owner: @sop.SOP_owner, date_created: @sop.date_created, date_updated: @sop.date_updated, name: @sop.name, version: @sop.version }
    end

    assert_redirected_to sop_path(assigns(:sop))
  end

  test "should show sop" do
    get :show, id: @sop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sop
    assert_response :success
  end

  test "should update sop" do
    put :update, id: @sop, sop: { SOP_owner: @sop.SOP_owner, date_created: @sop.date_created, date_updated: @sop.date_updated, name: @sop.name, version: @sop.version }
    assert_redirected_to sop_path(assigns(:sop))
  end

  test "should destroy sop" do
    assert_difference('Sop.count', -1) do
      delete :destroy, id: @sop
    end

    assert_redirected_to sops_path
  end
end
