class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :description, length: {in: 10..500}
  # validates :image_path, presence: true
  validates :price, numericality: {greater_than: 0} 
  validates :quantity, numericality: {greater_than: 0}

  # scope :title_search, -> (search_term) {where"name iLIKE ?", "%#{params[:search_term]}%"}

  # def supplier # needs to find by supplier id, using Supplier, supplier_id already has attr reader/writer
  #   Supplier.find_by(id: supplier_id)

  # end 

  belongs_to :supplier
  has_many :images
  

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end 

  def total
    price + tax
  end


end
