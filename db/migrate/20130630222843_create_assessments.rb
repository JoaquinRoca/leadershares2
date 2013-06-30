class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :competency
      t.string :question
      t.string :name

      t.timestamps
    end
  end
end
