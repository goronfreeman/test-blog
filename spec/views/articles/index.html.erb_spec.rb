require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :author => nil,
        :title => "MyText",
        :body => "MyText"
      ),
      Article.create!(
        :author => nil,
        :title => "MyText",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
