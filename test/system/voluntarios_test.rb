require "application_system_test_case"

class VoluntariosTest < ApplicationSystemTestCase
  setup do
    @voluntario = voluntarios(:one)
  end

  test "visiting the index" do
    visit voluntarios_url
    assert_selector "h1", text: "Voluntarios"
  end

  test "should create voluntario" do
    visit voluntarios_url
    click_on "New voluntario"

    fill_in "Persona", with: @voluntario.persona_id
    click_on "Create Voluntario"

    assert_text "Voluntario was successfully created"
    click_on "Back"
  end

  test "should update Voluntario" do
    visit voluntario_url(@voluntario)
    click_on "Edit this voluntario", match: :first

    fill_in "Persona", with: @voluntario.persona_id
    click_on "Update Voluntario"

    assert_text "Voluntario was successfully updated"
    click_on "Back"
  end

  test "should destroy Voluntario" do
    visit voluntario_url(@voluntario)
    click_on "Destroy this voluntario", match: :first

    assert_text "Voluntario was successfully destroyed"
  end
end
