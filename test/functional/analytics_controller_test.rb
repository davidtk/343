require File.dirname(__FILE__) + '/../test_helper'

class AnalyticsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:analytics)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_analytic
    assert_difference('Analytic.count') do
      post :create, :analytic => { }
    end

    assert_redirected_to analytic_path(assigns(:analytic))
  end

  def test_should_show_analytic
    get :show, :id => analytics(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => analytics(:one).id
    assert_response :success
  end

  def test_should_update_analytic
    put :update, :id => analytics(:one).id, :analytic => { }
    assert_redirected_to analytic_path(assigns(:analytic))
  end

  def test_should_destroy_analytic
    assert_difference('Analytic.count', -1) do
      delete :destroy, :id => analytics(:one).id
    end

    assert_redirected_to analytics_path
  end
end
