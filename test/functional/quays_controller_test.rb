require File.dirname(__FILE__) + '/../test_helper'

class QuaysControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:quays)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_quay
    assert_difference('Quay.count') do
      post :create, :quay => { }
    end

    assert_redirected_to quay_path(assigns(:quay))
  end

  def test_should_show_quay
    get :show, :id => quays(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => quays(:one).id
    assert_response :success
  end

  def test_should_update_quay
    put :update, :id => quays(:one).id, :quay => { }
    assert_redirected_to quay_path(assigns(:quay))
  end

  def test_should_destroy_quay
    assert_difference('Quay.count', -1) do
      delete :destroy, :id => quays(:one).id
    end

    assert_redirected_to quays_path
  end
end
