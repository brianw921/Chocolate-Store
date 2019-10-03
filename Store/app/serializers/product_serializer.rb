class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price
  has_many :order_products
end
