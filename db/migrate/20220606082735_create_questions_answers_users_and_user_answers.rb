class CreateQuestionsAnswersUsersAndUserAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps
    end

    create_table :questions do |t|
      t.string :text

      t.timestamps
    end

    create_table :answers do |t|
      t.references :question
      t.string :text
      t.integer :score

      t.timestamps
    end

    create_table :user_answers do |t|
      t.references :question
      t.references :answer
      t.references :user

      t.timestamps
    end
  end
end
