class InitialSetupOfUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string  :first_name, :default => ""
      t.string  :last_name, :default => ""
      t.string  :user_name
      t.text    :address
      t.string  :postcode
      t.float   :rating, :default => 0
      t.text    :last_3_endorsements
      t.date    :insurance_end
      t.text    :profile_picture
      t.float   :replies_percentage, :default => 0
      t.integer :kitshare_points

      t.timestamps
    end
  end
end
