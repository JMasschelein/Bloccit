require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do

  let(:my_sponsored_post) { SponsoredPost.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph,price: 50) }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

    describe "GET new" do
      it "returns http success" do
        get :new
        expect(response).to have_http_status(:success)
      end
 
      it "renders the #new view" do
        get :new
        expect(response).to render_template :new
      end
 
      it "instantiates @post" do
        get :new
        expect(assigns(:sponsored_post)).not_to be_nil
      end
    end
 
    describe "POST create" do

      it "increases the number of SponsoredPost by 1" do
        expect{sponsored_post :create, SponsoredPost: {title: RandomData.random_sentence, body: RandomData.random_paragraph,price: 50}}.to change(SponsoredPost,:count).by(1)
      end
 
      it "assigns the new sponsored_post to @sponsored_post" do
        post :create, SponsoredPost: {title: RandomData.random_sentence, body: RandomData.random_paragraph,price: 50}
        expect(assigns(:sponsored_post)).to eq Post.last
      end
 
      it "redirects to the new sponsored_post" do
        post :create, sponsored_post: {title: RandomData.random_sentence, body: RandomData.random_paragraph,price: 50}
        expect(response).to redirect_to SponsoredPost.last
      end
    end

   describe "GET show" do
     it "returns http success" do
       get :show, {id: my_sponsored_post.id}
       expect(response).to have_http_status(:success)
     end
     it "renders the #show view" do
       get :show, {id: my_sponsored_post.id}
       expect(response).to render_template :show
     end
 
     it "assigns my_post to @post" do
       get :show, {id: my_sponsored_post.id}
       expect(assigns(:sponsored_post)).to eq(my_sponsored_post)
     end
   end

end
