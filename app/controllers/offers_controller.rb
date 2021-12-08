class OffersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :index]

  def index
    @query=[]
    if params[:search]
      params[:search].each do |column, value|
      unless value.empty?
        if column == "companies.city" || column == "offers.name"
          operator = "ILIKE"
          value = "%#{value}%"
        elsif column == "income"
          operator = ">"
        else
          operator = "="
        end
        @query << "#{column} #{operator} '#{value}'"
      end
    end

    @offers = Offer.joins(:company).where(@query[0..-1].join(" AND "))

    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @wishlist = Wishlist.new
  end
end
