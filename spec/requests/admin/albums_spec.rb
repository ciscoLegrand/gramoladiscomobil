require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/admin/albums", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Admin::Album. As you add validations to Admin::Album, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Admin::Album.create! valid_attributes
      get albums_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      album = Admin::Album.create! valid_attributes
      get album_url(album)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_album_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      album = Admin::Album.create! valid_attributes
      get edit_album_url(album)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Admin::Album" do
        expect {
          post albums_url, params: { album: valid_attributes }
        }.to change(Admin::Album, :count).by(1)
      end

      it "redirects to the created album" do
        post albums_url, params: { album: valid_attributes }
        expect(response).to redirect_to(album_url(Admin::Album.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Admin::Album" do
        expect {
          post albums_url, params: { album: invalid_attributes }
        }.to change(Admin::Album, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post albums_url, params: { album: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested album" do
        album = Admin::Album.create! valid_attributes
        patch album_url(album), params: { album: new_attributes }
        album.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the album" do
        album = Admin::Album.create! valid_attributes
        patch album_url(album), params: { album: new_attributes }
        album.reload
        expect(response).to redirect_to(album_url(album))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        album = Admin::Album.create! valid_attributes
        patch album_url(album), params: { album: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested album" do
      album = Admin::Album.create! valid_attributes
      expect {
        delete album_url(album)
      }.to change(Admin::Album, :count).by(-1)
    end

    it "redirects to the albums list" do
      album = Admin::Album.create! valid_attributes
      delete album_url(album)
      expect(response).to redirect_to(albums_url)
    end
  end
end
