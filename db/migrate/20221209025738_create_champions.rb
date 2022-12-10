class CreateChampions < ActiveRecord::Migration[7.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :image
      t.integer :phone_no
      t.string :email
      t.string :linkedin_url
      t.string :github_url
      t.text :bio

      t.timestamps
    end
  end
end
