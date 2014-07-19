class Equipment_Rating < ActiveRecord::Base
  #attributes
  attr_accessible :rating, :content

  #validations
  validates :rating, :presence => {:message => 'Please provide a rating'}

  #ownership
  belongs_to :equipment
  belongs_to :user
  belongs_to :user, through: :equipment



  

end