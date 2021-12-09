class AddRemoteToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :remote, :boolean
  end
end
