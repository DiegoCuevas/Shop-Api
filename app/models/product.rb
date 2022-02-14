class Product < ApplicationRecord
  self.table_name = "product"
  belongs_to :category, foreign_key: "category"

  def self.search(search)
    all
      .joins(:category)
      .where("lower(product.name) LIKE ?", "%#{search.downcase}%")
      .or(Product.joins(:category)
      .where("lower(category.name) LIKE ? ", "%#{search.downcase}%"))
  end

  def self.order_by_category(category_id)
    all.where(category: category_id)
  end

end
