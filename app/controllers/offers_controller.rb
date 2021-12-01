class OffersController < ApplicationController

  def show
    @offer = Offer.find[params:id]
    @wishlist = Wishlist.new
  end

end
