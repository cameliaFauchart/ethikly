class WishlistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @offer = Offer.find(params[:offer_id])
    @wishlist = Wishlist.new
    @wishlist.offer = @offer
    @wishlist.user = current_user
    search_context = search_params
    if @wishlist.save
      redirect_to offers_path(search: search_context, anchor: "coeur-anchor-#{@offer.id}") #redirection sur même page avec ancre
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @offer = @wishlist.offer
    @wishlist.destroy
    search_context = search_params
    redirect_to offers_path(search: search_context, anchor: "coeur-anchor-#{@offer.id}") #redirection sur même page avec ancre
  end

  def index
    @wishlists = Wishlist.all
    scores = current_user.get_global_stats
    @score_stats = current_user.get_global_stats
    @recomandation = Offer.joins(:company).where("companies.environmental_scoring >= ? AND companies.social_scoring >= ? AND companies.eco_scoring >= ?",
    @score_stats[:env_score] / @score_stats[:nb_of_wishlist], @score_stats[:social_score] / @score_stats[:nb_of_wishlist], @score_stats[:eco_score] / @score_stats[:nb_of_wishlist]
    )
    # @wishlists = Wishlist.where(user_id: current_user)
  end

  private
  def search_params
    params[:search].permit("companies.city", "offers.name", "income", "contract")
  end
end
