require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        title: "Title",
        systems: "Systems",
        id: "Id",
        artwork: "Artwork",
        summary: "Summary"
      ),
      Game.create!(
        title: "Title",
        systems: "Systems",
        id: "Id",
        artwork: "Artwork",
        summary: "Summary"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Systems".to_s, count: 2
    assert_select "tr>td", text: "Id".to_s, count: 2
    assert_select "tr>td", text: "Artwork".to_s, count: 2
    assert_select "tr>td", text: "Summary".to_s, count: 2
  end
end
