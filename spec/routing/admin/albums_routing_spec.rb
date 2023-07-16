require "rails_helper"

RSpec.describe Admin::AlbumsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admin/albums").to route_to("admin/albums#index")
    end

    it "routes to #new" do
      expect(get: "/admin/albums/new").to route_to("admin/albums#new")
    end

    it "routes to #show" do
      expect(get: "/admin/albums/1").to route_to("admin/albums#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admin/albums/1/edit").to route_to("admin/albums#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admin/albums").to route_to("admin/albums#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admin/albums/1").to route_to("admin/albums#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admin/albums/1").to route_to("admin/albums#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admin/albums/1").to route_to("admin/albums#destroy", id: "1")
    end
  end
end
