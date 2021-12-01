class WishlistsController < ApplicationController

  def create
    @wishlist = Whishlist.new
    @wishlist = Offer.find(params[:offer_id])
  end

  def destroy

  end

end
