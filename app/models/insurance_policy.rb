class InsurancePolicy < ActiveRecord::Base
  
  #attributes
  attr_accessible :policy_number, :price, :start_date, :end_date

  #validations
  

  #ownership
  has_many 		:insurance_claims
  belongs_to 	:user

end