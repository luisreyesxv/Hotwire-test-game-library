require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      title: "Title",
      systems: "Systems",
      id: "Id",
      artwork: "Artwork",
      summary: "Summary"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Systems/)
    expect(rendered).to match(/Id/)
    expect(rendered).to match(/Artwork/)
    expect(rendered).to match(/Summary/)
  end
end
