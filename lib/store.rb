class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 } 
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 } 
  validate :validate_apparel

  def validate_apparel
    puts mens_apparel
    puts womens_apparel
    
    if !mens_apparel && !womens_apparel
      errors.add(:validate_apparel, "Must carry something!")
    end
  end
end
