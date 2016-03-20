class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :word
      t.integer :user_id
      t.integer :word_id

      t.timestamps null: false
    end
  end
end
