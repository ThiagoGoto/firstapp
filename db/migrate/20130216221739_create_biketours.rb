class CreateBiketours < ActiveRecord::Migration
  def change
    create_table :biketours do |t|
      t.string :name
      t.string :cpf
      t.date :birth
      t.string :bike

      t.timestamps
    end
  end
end
