class AddSafeSpaceToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :safe_space, :boolean
  end
end
