require 'test_helper'

class TerminalFlowTest < ActionDispatch::IntegrationTest
  test "can see terminals page" do
    get "/terminals"
    assert_select "h1", "Terminals"
  end

  test "can create a terminal" do
    get "/terminals/new"
    assert_response :success

    post "/terminals",
      params: { terminal: { name: "can create", attrs: "terminal successfully." } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Name:\n  can create"
  end
end
