class WishlistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @offer = Offer.find(params[:offer_id])
    @wishlist = Wishlist.new
    @wishlist.offer = @offer
    @wishlist.user = current_user
    if params[:search]
      search_context = search_params
      if @wishlist.save
        redirect_to offers_path(search: search_context, anchor: "coeur-anchor-#{@offer.id}") #redirection sur même page avec ancre
      end
    else
      if @wishlist.save
        redirect_to offers_path(anchor: "coeur-anchor-#{@offer.id}")
      end
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @offer = @wishlist.offer
    @wishlist.destroy
    if params[:search]
      search_context = search_params

      redirect_to offers_path(search: search_context, anchor: "coeur-anchor-#{@offer.id}") #redirection sur même page avec ancre
    else
      redirect_to offers_path(anchor: "coeur-anchor-#{@offer.id}")
    end
  end

  def index
    @wishlists = Wishlist.all
    # @wishlists = Wishlist.where(user_id: current_user)
  end

  private
  def search_params
    params[:search].permit("companies.city", "offers.name", "income", "contract")
  end
end
