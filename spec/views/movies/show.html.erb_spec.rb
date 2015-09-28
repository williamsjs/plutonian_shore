require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "Title",
      :director => "Director",
      :rating => 1.5,
      :review => "MyText",
      :description => "MyText",
      :author => "Author",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/1/)
  end
end
