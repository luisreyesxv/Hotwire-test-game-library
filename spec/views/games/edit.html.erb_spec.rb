require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      title: "MyString",
      systems: "MyString",
      id: "MyString",
      artwork: "MyString",
      summary: "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input[name=?]", "game[title]"

      assert_select "input[name=?]", "game[systems]"

      assert_select "input[name=?]", "game[id]"

      assert_select "input[name=?]", "game[artwork]"

      assert_select "input[name=?]", "game[summary]"
    end
  end
end
