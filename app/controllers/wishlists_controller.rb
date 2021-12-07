class WishlistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @offer = Offer.find(params[:offer_id])
    @wishlist = Wishlist.new() # ()?
    @wishlist.offer = @offer
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to offers_path(anchor:"coeur-anchor-#{@offer.id}") #redirection sur même page avec ancre
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @offer = @wishlist.offer
    @wishlist.destroy
    redirect_to offers_path(anchor:"coeur-anchor-#{@offer.id}") #redirection sur même page avec ancre
  end

  def index
    @wishlists = Wishlist.all
    # @wishlists = Wishlist.where(user_id: current_user)
  end
end
