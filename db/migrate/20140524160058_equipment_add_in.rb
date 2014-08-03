class EquipmentAddIn < ActiveRecord::Migration
  def change
    
    create_table :equipment do |t|
      t.belongs_to  :user
      t.string      :category
      t.string      :kind
      t.float       :daily_price
      t.float       :weekly_price
      t.float       :monthly_price
      t.string      :condition
      t.text        :description
      t.boolean     :insurance_required
      t.string      :location
      t.text        :photo

      t.timestamps
    end

    create_table :endorsements do |t|
      t.belongs_to  :user
      t.references  :author
      t.float       :rating
      t.text        :content
      
      t.timestamps
    end

  end
end
