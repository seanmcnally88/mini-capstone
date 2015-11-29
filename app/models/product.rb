class Product < ActiveRecord::Base

  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products

  SALES_TAX = 0.09
  DISCOUNT_THRESHOLD = 2.00

  def sale_message
    if price < DISCOUNT_THRESHOLD
       "Discount Item!!!"
    else
       "On Sale!!!"
    end
  end

  def tax
    # 0.09 assumes a 9% sales tax
    x = price * SALES_TAX
    @tax = x
  end

  def grand_total
   price + @tax 
  end
end
