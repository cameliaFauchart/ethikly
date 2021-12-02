class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :wishlists
  has_many :offers, through: :wishlists

  # Si l'offer passée en paramètre se trouve
  # dans la wishlist de l'user, on retourne TRUE
  def already_in_list?(offer)
    self.offers.each do |user_offer|
      return true if user_offer == offer
    end
    return false
  end

  def get_wishlist(offer)
    Wishlist.find_by(user: self, offer: offer) #wishlist qui correspont à cet user et à cette offre
  end

end
