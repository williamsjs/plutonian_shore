require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :name => "MyString",
      :image => "MyString",
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "input#article_image[name=?]", "article[image]"

      assert_select "textarea#article_content[name=?]", "article[content]"

      assert_select "input#article_author[name=?]", "article[author]"
    end
  end
end
