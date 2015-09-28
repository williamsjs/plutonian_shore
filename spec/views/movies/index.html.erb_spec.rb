require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :title => "Title",
        :director => "Director",
        :rating => 1.5,
        :review => "MyText",
        :description => "MyText",
        :author => "Author",
        :year => 1
      ),
      Movie.create!(
        :title => "Title",
        :director => "Director",
        :rating => 1.5,
        :review => "MyText",
        :description => "MyText",
        :author => "Author",
        :year => 1
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
