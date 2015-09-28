require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :title => "MyString",
      :rating => 1.5,
      :review => "MyText",
      :article => "MyText",
      :author => "MyString",
      :developer => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_title[name=?]", "game[title]"

      assert_select "input#game_rating[name=?]", "game[rating]"

      assert_select "textarea#game_review[name=?]", "game[review]"

      assert_select "textarea#game_article[name=?]", "game[article]"

      assert_select "input#game_author[name=?]", "game[author]"

      assert_select "input#game_developer[name=?]", "game[developer]"
    end
  end
end
