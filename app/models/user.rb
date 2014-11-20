class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :loos
  has_many :ratings

  # Loo.find_by_user_id(1).ratings
  # Find ratings for current user's loos

  # l.ratings
  # Ratings for current loo

  # u.ratings
  # all ratings made by current user

  # u.loos
  # all loos beloning to current user

end
