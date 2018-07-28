require 'test_helper'

class MapasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mapa = mapas(:one)
  end

  test "should get index" do
    get mapas_url
    assert_response :success
  end

  test "should get new" do
    get new_mapa_url
    assert_response :success
  end

  test "should create mapa" do
    assert_difference('Mapa.count') do
      post mapas_url, params: { mapa: { localidad: @mapa.localidad, mapa: @mapa.mapa } }
    end

    assert_redirected_to mapa_url(Mapa.last)
  end

  test "should show mapa" do
    get mapa_url(@mapa)
    assert_response :success
  end

  test "should get edit" do
    get edit_mapa_url(@mapa)
    assert_response :success
  end

  test "should update mapa" do
    patch mapa_url(@mapa), params: { mapa: { localidad: @mapa.localidad, mapa: @mapa.mapa } }
    assert_redirected_to mapa_url(@mapa)
  end

  test "should destroy mapa" do
    assert_difference('Mapa.count', -1) do
      delete mapa_url(@mapa)
    end

    assert_redirected_to mapas_url
  end
end
