# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
    has_many :order_products
    has_many :orders, through: :order_products
end
