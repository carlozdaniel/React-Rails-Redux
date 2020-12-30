class CreatePoliticas < ActiveRecord::Migration[6.0]
  def change
    create_table :politicas do |t|
      t.string :conunto_politicas
      t.string :revision_politica
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
