class OffersController < ApplicationController
  def index
    if params[:ou].present? || params[:quoi].present?
      sql_query = "offers.name ILIKE :quoi AND companies.city ILIKE :ou"
      @offers = Offer.joins(:company).where(sql_query, ou: "%#{params[:ou]}%",quoi: "%#{params[:quoi]}%")   
    else
    @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @wishlist = Wishlist.new
  end
end
