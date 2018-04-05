require "application_system_test_case"

class TerminalsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit terminals_url

    assert_selector "h1", text: "Terminals"
  end

  test "creating a new terminal" do
    visit terminals_url

    click_on "New Terminal"

    fill_in "Name", with: "New Terminal"
    fill_in "Attrs", with: "Created this terminal successfully!"

    click_on "Create Terminal"

    assert_text "Terminal was successfully created."
  end

  test "updating a terminal" do
    visit terminals_url

    click_link('Edit', match: :first)

    fill_in "Name", with: "Updated name"
    fill_in "Attrs", with: "Updated attrs"

    click_on "Update Terminal"

    assert_text "Terminal was successfully updated."
  end

  # test "deleting a terminal" do
  #   visit terminals_url
  #
  #   click_link('Delete', match: :first)
  #
  #   message = accept_confirm do
  #     click_link('OK')
  #   end
  #
  #   expect(message).to eq('Are you sure?')
  #
  #   assert_text "Terminal was successfully destroyed."
  # end

  test "viewing a specific terminal" do
    visit terminals_url

    click_link('Show', match: :first)
    assert_selector "p", text: "Name"
    assert_selector "p", text: "Description"
    assert_selector "p", text: "Attrs"

  end

end
