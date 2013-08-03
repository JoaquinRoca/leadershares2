class AssociateVideosAndCompetencies < ActiveRecord::Migration
  def change
	create_table :competencies_videos do |t|
      t.belongs_to :competency
      t.belongs_to :video
    end
  end

end