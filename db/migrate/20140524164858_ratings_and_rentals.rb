class RatingsAndRentals < ActiveRecord::Migration
  def change
    create_table :equipment_rating do |t|
      t.belongs_to  :equipment
      t.float       :rating
      t.text        :content
      t.references  :author

      t.timestamps
    end

    create_table :rental do |t|
      t.timestamps

      t.belongs_to :equipment
      t.date      :start_date
      t.date      :end_date
      t.float     :cost
      t.boolean   :confirmed
      t.string    :status
    end
  end
end
