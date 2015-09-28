require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :title => "MyString",
      :rating => 1.5,
      :review => "MyText",
      :article => "MyText",
      :author => "MyString",
      :developer => "MyString"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_title[name=?]", "game[title]"

      assert_select "input#game_rating[name=?]", "game[rating]"

      assert_select "textarea#game_review[name=?]", "game[review]"

      assert_select "textarea#game_article[name=?]", "game[article]"

      assert_select "input#game_author[name=?]", "game[author]"

      assert_select "input#game_developer[name=?]", "game[developer]"
    end
  end
end
