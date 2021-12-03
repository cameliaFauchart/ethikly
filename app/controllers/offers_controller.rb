class OffersController < ApplicationController
  def index


    if params[:search].present? && !(params[:search].each_value.all? &:empty?)

      @offers = Offer.where("income > :value", value: params[:search][:income])


    else
      @offers = Offer.includes(:company)

    end
  end

  def show
    @offer = Offer.find(params[:id])
    @wishlist = Wishlist.new
  end
end
# Book.where("created_at >= :start_date AND created_at <= :end_date",
#   {start_date: params[:start_date], end_date: params[:end_date]})
