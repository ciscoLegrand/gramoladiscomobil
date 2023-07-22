# frozen_string_literal: true

class AlbumComponent < ViewComponent::Base
  with_collection_parameter :album
  
  attr_accessor :album
  def initialize(album:)
    @album = album
  end

  def render?
    Rails.logger.debug "AlbumComponent#render? #{album.inspect}"
    @album.present? && @album.published? && @album.images.attached?
  end
end