require 'rails_helper'

RSpec.describe "followers/edit", type: :view do
  before(:each) do
    @follower = assign(:follower, Follower.create!(
      belongs_to: ""
    ))
  end

  it "renders the edit follower form" do
    render

    assert_select "form[action=?][method=?]", follower_path(@follower), "post" do

      assert_select "input[name=?]", "follower[belongs_to]"
    end
  end
end
