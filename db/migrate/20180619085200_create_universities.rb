class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :web_page
      t.string :name
      t.string :alpha_two_code
      t.string :state
      t.string :domain
      t.string :country

      t.timestamps
    end
  end
end
