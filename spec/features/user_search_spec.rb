require 'rails_helper'

RSpec.describe "User" do

  it "Can search successfully" do

    visit root_path

    expect(page).to have_content("Stark")

    visit ('/search?query=greyjoy')

    expect(page).to have_css('.result', count: 7)

  end

end
