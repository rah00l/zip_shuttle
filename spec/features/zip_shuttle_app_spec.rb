# require 'rails_helper'

# describe "Launch Application" do

#   before :each do
#     visit root_path
#   end

#   it "Display Home Page" do
#     expect(page.status_code).to be 200
#     # To compare against _path use below
#     # uri = URI.parse(current_url).request_uri
#     expect(current_url).to eq root_url
#   end

#     it "enforce that meta charset UTF-8 is declared at Application level layout" do
#     	debugger
#     	expect(page).to have_content("head>meta[charset='UTF-8']")
#     	# have_content
#     	# expect(page).to have_selector("head>meta[charset='UTF-8']", :visible => false)
#     	# debugger
#     	# expect(page).to has_head? ("meta[charset='UTF-8']")
#   end

# end