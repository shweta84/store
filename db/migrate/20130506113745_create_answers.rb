class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :option
      t.boolean :is_true, default: false
      t.references :question

      t.timestamps
    end
  end
end
