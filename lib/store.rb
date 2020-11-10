class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 } 
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 } 
  validate :validate_apparel

  before_destroy :check_num_employees, prepend: true

  def validate_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:validate_apparel, "Must carry something!")
    end
  end

  def check_num_employees
    puts self.employees.size
    if (self.employees.size > 0)
      errors.add(:check_num_employees, "Cannot delete a store with employees!")
      return false
    end
  end
end
