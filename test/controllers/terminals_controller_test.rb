require 'test_helper'

class TerminalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terminal = terminals(:one)
  end

  test "should get index" do
    get terminals_url
    assert_response :success
    assert_equal "index", @controller.action_name
    assert_match "Terminals", @response.body
  end

  # get terminals_url, headers: { "Content-Type": "application/json" }
  # get terminals_url, headers: { "Content-Type": "application/xml" }

  test "should get new" do
    get new_terminal_url
    assert_response :success
    assert_equal "new", @controller.action_name
  end

  test "should create terminal" do
    assert_difference('Terminal.count') do
      post terminals_url, params: { terminal: { attrs: @terminal.attrs, description: @terminal.description, name: @terminal.name } }
    end

    assert_redirected_to terminal_url(Terminal.last)
    assert_equal "create", @controller.action_name
  end

  test "should show terminal" do
    get terminal_url(@terminal)
    assert_response :success
    assert_equal "show", @controller.action_name
  end

  test "should get edit" do
    get edit_terminal_url(@terminal)
    assert_response :success
    assert_equal "edit", @controller.action_name
  end

  test "should update terminal" do
    patch terminal_url(@terminal), params: { terminal: {name: "updated_name", description:"updated_desc", attrs:"updated_attrs"} }
    assert_redirected_to terminal_url(@terminal)
    @terminal.reload
    assert_equal "updated_name", @terminal.name
    assert_equal "updated_desc", @terminal.description
    assert_equal "updated_attrs", @terminal.attrs

    assert_equal "update", @controller.action_name
  end

  test "should destroy terminal" do
    assert_difference('Terminal.count', -1) do
      delete terminal_url(@terminal)
    end

    assert_redirected_to terminals_url
    assert_equal "destroy", @controller.action_name
  end
end
