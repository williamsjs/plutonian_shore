require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :name => "MyString",
      :author => "MyString",
      :year => "",
      :synopsis => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_name[name=?]", "book[name]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_year[name=?]", "book[year]"

      assert_select "textarea#book_synopsis[name=?]", "book[synopsis]"
    end
  end
end
