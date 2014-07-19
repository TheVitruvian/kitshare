class endoursement < ActiveRecord::Base

  #attributes
  attr_accessible :user_id, :author_id, :rating, :content


  #validations
  validate :rating, :presence => {:message => 'Please provide a rating'}


  #ownership
  belongs_to :user

  #after save update of user endoursement created

end