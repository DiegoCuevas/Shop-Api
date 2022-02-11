class Product < ApplicationRecord
  self.table_name = "product"

  def self.search(search)
    all.where('name LIKE ?', "%#{search}%")
  end

  def self.order_by_category(category_id)
    all.where(category: category_id)
  end

end
