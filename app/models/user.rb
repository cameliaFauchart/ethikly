class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :wishlists
  has_many :offers, through: :wishlists
  has_one_attached :photo
  has_one_attached :pdf

  # Si l'offer passée en paramètre se trouve
  # dans la wishlist de l'user, on retourne TRUE
  def already_in_list?(offer)
    self.offers.each do |user_offer|
      return true if user_offer == offer
    end
    return false
  end

  def get_wishlist(offer)
    Wishlist.find_by(user: self, offer: offer) #wishlist qui correspond à cet user précis et à cette offre précise
  end

  def get_global_stats
    env_score = wishlists.map {|wishlist| wishlist.offer.company.environmental_scoring}
    eco_score = wishlists.map {|wishlist| wishlist.offer.company.eco_scoring}
    social_score = wishlists.map {|wishlist| wishlist.offer.company.social_scoring}

    {eco_score: eco_score.sum, env_score: env_score.sum, social_score: social_score.sum, nb_of_wishlist: social_score.size }
  end

end
