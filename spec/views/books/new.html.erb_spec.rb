require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :name => "MyString",
      :author => "MyString",
      :year => "",
      :synopsis => "MyText"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_year[name=?]", "book[year]"

      assert_select "textarea#book_synopsis[name=?]", "book[synopsis]"
    end
  end
end
