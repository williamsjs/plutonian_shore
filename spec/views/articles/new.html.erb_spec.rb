require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :name => "MyString",
      :image => "MyString",
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "input#article_image[name=?]", "article[image]"

      assert_select "textarea#article_content[name=?]", "article[content]"

      assert_select "input#article_author[name=?]", "article[author]"
    end
  end
end
