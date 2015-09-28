require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :title => "Title",
        :rating => 1.5,
        :review => "MyText",
        :article => "MyText",
        :author => "Author",
        :developer => "Developer"
      ),
      Game.create!(
        :title => "Title",
        :rating => 1.5,
        :review => "MyText",
        :article => "MyText",
        :author => "Author",
        :developer => "Developer"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Developer".to_s, :count => 2
  end
end
