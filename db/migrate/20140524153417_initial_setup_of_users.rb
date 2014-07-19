class InitialSetupOfUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string  :first_name, :default => ""
      t.string  :last_name, :default => ""
      t.string  :user_name
      t.text    :address
      t.string  :postcode
      t.float   :rating
      t.text    :top_3_endorsements
      t.boolean :insurance
      t.text    :profile_picture
      t.float   :replies_percentage

      t.timestamps
    end
  end
end
