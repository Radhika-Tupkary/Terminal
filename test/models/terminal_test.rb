require 'test_helper'

class TerminalTest < ActiveSupport::TestCase
  test "should not save terminal without name" do
    terminal = Terminal.new
    assert_not terminal.save, "Saved the terminal without a name"
  end

  test "should not save terminal without attrs" do
    terminal = Terminal.new
    assert_not terminal.save, "Saved the terminal without attrs"
  end

  test "should save terminal without description" do
    terminal = Terminal.new({"name":"radg", "attrs":2})
    assert terminal.save, "Could not save the terminal"
  end

  test "should not save terminal because name is too short" do
    terminal = Terminal.new({name:"r", attrs:"first time"})
    assert_not terminal.save, "Saved the terminal when name is only one char"
  end

  test "should not save terminal because name is too long" do
    terminal = Terminal.new({name:"Everyone's story is unique and so are everyone's struggles.", attrs:"famous quote"})
    assert_not terminal.save, "Saved the terminal when name is more than 15 char"
  end
end
