# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  price      :float
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true 
    validates :image, presence: true 
    
    has_many :carts
    has_many :orders, through: :carts
end
