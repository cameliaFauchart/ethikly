class WishlistsController < ApplicationController

  def create
    @offer = Offer.find(params[:offer_id])
    @wishlist = Wishlist.new()
    @wishlist.offer = @offer
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to wishlists_path
    end

  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
  end
  def index
    @wishlists = Wishlist.all
  end

end
