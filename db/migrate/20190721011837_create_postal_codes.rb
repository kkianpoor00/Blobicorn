class CreatePostalCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :postal_codes do |t|
      t.string :PostCode

      t.timestamps
    end
  end
end
