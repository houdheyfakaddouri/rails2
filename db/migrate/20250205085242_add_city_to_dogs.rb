class AddCityToDogs < ActiveRecord::Migration[8.0]
  def change
    add_reference :dogs, :city, null: false, foreign_key: true
  end
end
