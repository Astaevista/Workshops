class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_inclusion_of :firstname, :in => [true, false]

  has_many :reviews
  has_many :products
end
