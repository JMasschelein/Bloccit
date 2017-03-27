require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
    
   let(:sponsored_post) { SponsoredPost.create!(title: "New Post Title", body: "New Post Body", price: 50) }
   let(:topic) { Topic.create!(name: name, description: description) }
 
   describe "attributes" do
     it "has title, body and price attributes" do
       expect(sponsored_post).to have_attributes(title: "New Post Title", body: "New Post Body", price: 50)
     end
   end
end
