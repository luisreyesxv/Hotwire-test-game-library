require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      title: "MyString",
      systems: "MyString",
      id: "MyString",
      artwork: "MyString",
      summary: "MyString"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input[name=?]", "game[title]"

      assert_select "input[name=?]", "game[systems]"

      assert_select "input[name=?]", "game[id]"

      assert_select "input[name=?]", "game[artwork]"

      assert_select "input[name=?]", "game[summary]"
    end
  end
end
