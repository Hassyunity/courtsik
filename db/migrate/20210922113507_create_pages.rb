class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :tiitle
      t.string :body
      t.string :text

      t.timestamps
    end
  end
end
