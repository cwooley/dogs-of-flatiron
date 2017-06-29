class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :image_url
      t.boolean :is_a_good_boy, default: true
    end
  end
end
