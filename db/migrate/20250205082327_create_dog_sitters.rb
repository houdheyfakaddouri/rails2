class CreateDogSitters < ActiveRecord::Migration[8.0]
  def change
    create_table :dog_sitters do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end


class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end

class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :breed
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end