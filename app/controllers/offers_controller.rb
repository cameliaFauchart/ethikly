class OffersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index


    if params[:search].present? && !(params[:search].each_value.all? &:empty?)
      @offers = []
      @selected_offers = Offer.where("income > :value", value: params[:search][:income])
      @selected_offers.each do |offer|
        job = Offer.find(offer.id).contract
        if job == params[:search][:contract]
          @offers << offer
        end
      end

      if @offers.size == 0
        @offers = @selected_offers
      end

    #if params[:ou].present? || params[:quoi].present?
      #sql_query = "offers.name ILIKE :quoi AND companies.city ILIKE :ou"
      #@offers = Offer.joins(:company).where(sql_query, ou: "%#{params[:ou]}%",quoi: "%#{params[:quoi]}%")

    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @wishlist = Wishlist.new
  end
end
