class Rental < ActiveRecord::Base

  #attributes
  attr_accessible :renter, :equipment_id, :start_date, :end_date, :cost, :status

  #validations
  validates :renter, presence: true 
  validates :equipment_id, presence: true
  validates :start_date, :presence => {:message => 'Please input a start date'}
  validates :end_date, :presence => {:message => 'Please input an end date'}
  validates :cost, presence: true
  validates :status, presence: true
  
  #ownership
  belongs_to :user
  belongs_to :equipment

  

end