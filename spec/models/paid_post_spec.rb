require 'rails_helper'

RSpec.describe PaidPost, type: :model do
   let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:paid_post) { PaidPost.create!(title: "Post Title",body: 'Post Body',price: "Post Price" ,topic: topic) }
 
   describe "attributes" do
     it "has a title, body and price attribute" do
       expect(paid_post).to have_attributes(title: "Post Title",body: 'Post Body',price: "Post Price")
     end
   end
end
