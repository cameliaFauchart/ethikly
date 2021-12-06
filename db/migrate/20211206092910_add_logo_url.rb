class AddLogoUrl < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :logo_url, :string
  end
end
