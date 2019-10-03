# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
    has_many :order_products
    has_many :products, through: :order_products
end
