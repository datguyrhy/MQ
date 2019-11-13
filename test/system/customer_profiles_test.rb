require "application_system_test_case"

class CustomerProfilesTest < ApplicationSystemTestCase
  setup do
    @customer_profile = customer_profiles(:one)
  end

  test "visiting the index" do
    visit customer_profiles_url
    assert_selector "h1", text: "Customer Profiles"
  end

  test "creating a Customer profile" do
    visit customer_profiles_url
    click_on "New Customer Profile"

    click_on "Create Customer profile"

    assert_text "Customer profile was successfully created"
    click_on "Back"
  end

  test "updating a Customer profile" do
    visit customer_profiles_url
    click_on "Edit", match: :first

    click_on "Update Customer profile"

    assert_text "Customer profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer profile" do
    visit customer_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer profile was successfully destroyed"
  end
end
