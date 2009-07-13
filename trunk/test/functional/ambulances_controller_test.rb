require File.dirname(__FILE__) + '/../test_helper'

class AmbulancesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ambulances)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ambulance
    assert_difference('Ambulance.count') do
      post :create, :ambulance => { }
    end

    assert_redirected_to ambulance_path(assigns(:ambulance))
  end

  def test_should_show_ambulance
    get :show, :id => ambulances(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ambulances(:one).id
    assert_response :success
  end

  def test_should_update_ambulance
    put :update, :id => ambulances(:one).id, :ambulance => { }
    assert_redirected_to ambulance_path(assigns(:ambulance))
  end

  def test_should_destroy_ambulance
    assert_difference('Ambulance.count', -1) do
      delete :destroy, :id => ambulances(:one).id
    end

    assert_redirected_to ambulances_path
  end
end
