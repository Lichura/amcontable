require 'test_helper'

class ServiciosListsControllerTest < ActionController::TestCase
  setup do
    @servicios_list = servicios_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicios_list" do
    assert_difference('ServiciosList.count') do
      post :create, servicios_list: { descripcion: @servicios_list.descripcion, servicio: @servicios_list.servicio, servicios_id: @servicios_list.servicios_id }
    end

    assert_redirected_to servicios_list_path(assigns(:servicios_list))
  end

  test "should show servicios_list" do
    get :show, id: @servicios_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicios_list
    assert_response :success
  end

  test "should update servicios_list" do
    patch :update, id: @servicios_list, servicios_list: { descripcion: @servicios_list.descripcion, servicio: @servicios_list.servicio, servicios_id: @servicios_list.servicios_id }
    assert_redirected_to servicios_list_path(assigns(:servicios_list))
  end

  test "should destroy servicios_list" do
    assert_difference('ServiciosList.count', -1) do
      delete :destroy, id: @servicios_list
    end

    assert_redirected_to servicios_lists_path
  end
end
