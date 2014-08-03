class Equipment < ActiveRecord::Base

  #attributes
  attr_accessible :user, :category, :kind, :daily_price, :weekly_price, :monthly_price, :condition, :description, :insurance_required, :location, :photo

  #validations
  validates :category, :presence => {:message => 'Please input a category'}
  validates :kind, :presence => {:message => 'Please input a type'}
  validates :insurance_required, :presence => {:message => 'Please let us know if you would like a borrower to have insurance'}

  #ownership
  has_many :rentals
  has_many :equipment_ratings
  belongs_to :user

end