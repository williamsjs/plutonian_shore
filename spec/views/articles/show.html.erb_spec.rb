require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :name => "Name",
      :image => "Image",
      :content => "MyText",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
  end
end
