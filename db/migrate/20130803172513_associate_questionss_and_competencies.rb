class AssociateQuestionssAndCompetencies < ActiveRecord::Migration
  def change
  create_table :competencies_questions do |t|
      t.belongs_to :competency
      t.belongs_to :question
    end
  end

end