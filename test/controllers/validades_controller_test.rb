require 'test_helper'

class ValidadesControllerTest < ActionController::TestCase
  setup do
    @validade = validades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validade" do
    assert_difference('Validade.count') do
      post :create, validade: { produto_id: @validade.produto_id, user_id: @validade.user_id, validade: @validade.validade }
    end

    assert_redirected_to validade_path(assigns(:validade))
  end

  test "should show validade" do
    get :show, id: @validade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @validade
    assert_response :success
  end

  test "should update validade" do
    patch :update, id: @validade, validade: { produto_id: @validade.produto_id, user_id: @validade.user_id, validade: @validade.validade }
    assert_redirected_to validade_path(assigns(:validade))
  end

  test "should destroy validade" do
    assert_difference('Validade.count', -1) do
      delete :destroy, id: @validade
    end

    assert_redirected_to validades_path
  end
end
