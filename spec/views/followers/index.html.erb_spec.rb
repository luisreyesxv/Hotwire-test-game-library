require 'rails_helper'

RSpec.describe "followers/index", type: :view do
  before(:each) do
    assign(:followers, [
      Follower.create!(
        belongs_to: ""
      ),
      Follower.create!(
        belongs_to: ""
      )
    ])
  end

  it "renders a list of followers" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
