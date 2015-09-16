require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :name => "Name",
      :author => "Author",
      :year => "",
      :synopsis => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
