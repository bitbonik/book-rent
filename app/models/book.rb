class Book < ApplicationRecord
  belongs_to :user
  has_many :book_categories
  has_many :categories, through: :book_categories
  
  has_attached_file :book_cover, styles: { medium: "400x400>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_cover, content_type: /\Aimage\/.*\z/

  

end
