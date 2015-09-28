require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "MyString",
      :director => "MyString",
      :rating => 1.5,
      :review => "MyText",
      :description => "MyText",
      :author => "MyString",
      :year => 1
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_title[name=?]", "movie[title]"

      assert_select "input#movie_director[name=?]", "movie[director]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "textarea#movie_review[name=?]", "movie[review]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_author[name=?]", "movie[author]"

      assert_select "input#movie_year[name=?]", "movie[year]"
    end
  end
end
