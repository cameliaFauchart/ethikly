class WishlistsController < ApplicationController

  def create
    @wishlist = Offer.find(params[:offer_id])
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.offer = @offer
    @wishlist.user = current_user
    if @wishlist.save

  end

  def destroy

  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:destroy)
  end

end
