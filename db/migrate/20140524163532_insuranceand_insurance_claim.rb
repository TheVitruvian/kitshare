class InsuranceandInsuranceClaim < ActiveRecord::Migration
  def change

    create_table :insurance_policy do |t|
      t.timestamps
      t.integer     :policy_number
      t.float       :price
      t.date        :start_date
      t.date        :end_date
    end

    create_table :insurance_claim do |t|
      t.timestamps
      t.integer     :claim_number
      t.float       :cost
      t.boolean     :closed
      t.date        :closed_date
      t.belongs_to  :insurance_policy
    end
  end
end
