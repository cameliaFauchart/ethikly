class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :city
      t.integer :eco_scoring
      t.integer :social_scoring
      t.integer :environmental_scoring
      t.string :address
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
  end
end
