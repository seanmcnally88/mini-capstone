class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_products 
  has_many :products, through: :carted_products 

  # def item_price
  #   product.price
  # end

  # def sales_tax
  #   (item_price * 0.09) * quantity
  # end

  # def subtotal
  #   quantity * item_price
  # end

  # def grand_total
  #   subtotal + sales_tax
  # end

  # def email_cart
  #   supplier.email
  # end

  # def name_cart
  #   product.name
  # end

end
