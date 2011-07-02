require File.dirname(__FILE__) + '/../test_helper'

class MailbagsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:mailbags)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_mailbag
    assert_difference('Mailbag.count') do
      post :create, :mailbag => { }
    end

    assert_redirected_to mailbag_path(assigns(:mailbag))
  end

  def test_should_show_mailbag
    get :show, :id => mailbags(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => mailbags(:one).id
    assert_response :success
  end

  def test_should_update_mailbag
    put :update, :id => mailbags(:one).id, :mailbag => { }
    assert_redirected_to mailbag_path(assigns(:mailbag))
  end

  def test_should_destroy_mailbag
    assert_difference('Mailbag.count', -1) do
      delete :destroy, :id => mailbags(:one).id
    end

    assert_redirected_to mailbags_path
  end
end
