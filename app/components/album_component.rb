# frozen_string_literal: true

class AlbumComponent < ViewComponent::Base
  with_collection_parameter :album
  
  attr_accessor :album
  def initialize(album:)
    @album = album
  end

  def render?
    @album.present?
  end
end