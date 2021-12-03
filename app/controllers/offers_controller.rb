class OffersController < ApplicationController
  def index

    if params[:search].present? && !(params[:search].each_value.all? &:empty?)

      @offers = []
      @selected_offers = Offer.where("income > :value", value: params[:search][:income])

      @selected_offers.each do |offer|
        company = Company.find(offer.company_id)


        if company.city == params[:search][:city]
          @offers << offer
        end
      end

    else

      @offers = Offer.all

    end
  end

  def show
    @offer = Offer.find(params[:id])
    @wishlist = Wishlist.new
  end
end
# Book.where("created_at >= :start_date AND created_at <= :end_date",
#   {start_date: params[:start_date], end_date: params[:end_date]})
