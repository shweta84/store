class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :title
      t.string :question_ids

      t.timestamps
    end
  end
end
