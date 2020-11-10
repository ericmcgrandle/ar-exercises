class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200 }
  validates :store, presence: true

  before_create :create_password

  private
  def create_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join

    # If using after_create
    # pass = (0...8).map { (65 + rand(26)).chr }.join
    # self.update(password: pass) 
  end
end