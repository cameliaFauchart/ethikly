class WishlistsController < ApplicationController

  def create
    @offer = Offer.find(params[:offer_id])
    @wishlist = Wishlist.new() # ()?
    @wishlist.offer = @offer
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to request.referer
    end

  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    redirect_to request.referer # redirige-moi là ou j'étais précédemment
  end

  def index
    @wishlists = Wishlist.all
  end

end
