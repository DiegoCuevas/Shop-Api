class Product < ApplicationRecord
  self.table_name = "product"

  belongs_to :category

  def self.search(search)
    all.where('name LIKE ?', "%#{search}%")
  end

  def self.order_by_category(category_id)
    all.where(category_id: category_id)
  end

end
