require "application_system_test_case"

class MapasTest < ApplicationSystemTestCase
  setup do
    @mapa = mapas(:one)
  end

  test "visiting the index" do
    visit mapas_url
    assert_selector "h1", text: "Mapas"
  end

  test "creating a Mapa" do
    visit mapas_url
    click_on "New Mapa"

    fill_in "Localidad", with: @mapa.localidad
    fill_in "Mapa", with: @mapa.mapa
    click_on "Create Mapa"

    assert_text "Mapa was successfully created"
    click_on "Back"
  end

  test "updating a Mapa" do
    visit mapas_url
    click_on "Edit", match: :first

    fill_in "Localidad", with: @mapa.localidad
    fill_in "Mapa", with: @mapa.mapa
    click_on "Update Mapa"

    assert_text "Mapa was successfully updated"
    click_on "Back"
  end

  test "destroying a Mapa" do
    visit mapas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mapa was successfully destroyed"
  end
end
