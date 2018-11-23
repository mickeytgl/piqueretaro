require "application_system_test_case"

class ProvidersTest < ApplicationSystemTestCase
  setup do
    @provider = providers(:one)
  end

  test "visiting the index" do
    visit providers_url
    assert_selector "h1", text: "Providers"
  end

  test "creating a Provider" do
    visit providers_url
    click_on "New Provider"

    fill_in "Address", with: @provider.address
    fill_in "Contact", with: @provider.contact
    fill_in "Email", with: @provider.email
    fill_in "Focus", with: @provider.focus
    fill_in "Name", with: @provider.name
    fill_in "Phone", with: @provider.phone
    fill_in "Reference", with: @provider.reference
    fill_in "Reference2", with: @provider.reference2
    fill_in "Reference3", with: @provider.reference3
    fill_in "Rfc", with: @provider.rfc
    fill_in "Website", with: @provider.website
    click_on "Create Provider"

    assert_text "Provider was successfully created"
    click_on "Back"
  end

  test "updating a Provider" do
    visit providers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @provider.address
    fill_in "Contact", with: @provider.contact
    fill_in "Email", with: @provider.email
    fill_in "Focus", with: @provider.focus
    fill_in "Name", with: @provider.name
    fill_in "Phone", with: @provider.phone
    fill_in "Reference", with: @provider.reference
    fill_in "Reference2", with: @provider.reference2
    fill_in "Reference3", with: @provider.reference3
    fill_in "Rfc", with: @provider.rfc
    fill_in "Website", with: @provider.website
    click_on "Update Provider"

    assert_text "Provider was successfully updated"
    click_on "Back"
  end

  test "destroying a Provider" do
    visit providers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provider was successfully destroyed"
  end
end
