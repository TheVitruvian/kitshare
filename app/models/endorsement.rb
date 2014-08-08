class Endorsement < ActiveRecord::Base

  #attributes
  attr_accessible :user_id, :author_id, :rating, :content


  #validations
  validate :rating, :presence => {:message => 'Please provide a rating'}


  #ownership
  belongs_to :user
  belongs_to :author, class_name: "User", :foreign_key => 'author_id'

  #after save update of user endoursement created

end