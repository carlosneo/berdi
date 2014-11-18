require 'test_helper'

class BerdiscfsControllerTest < ActionController::TestCase
  setup do
    @berdiscf = berdiscfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:berdiscfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create berdiscf" do
    assert_difference('Berdiscf.count') do
      post :create, berdiscf: {  }
    end

    assert_redirected_to berdiscf_path(assigns(:berdiscf))
  end

  test "should show berdiscf" do
    get :show, id: @berdiscf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @berdiscf
    assert_response :success
  end

  test "should update berdiscf" do
    patch :update, id: @berdiscf, berdiscf: {  }
    assert_redirected_to berdiscf_path(assigns(:berdiscf))
  end

  test "should destroy berdiscf" do
    assert_difference('Berdiscf.count', -1) do
      delete :destroy, id: @berdiscf
    end

    assert_redirected_to berdiscfs_path
  end
end
