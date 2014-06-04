class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :interview_status
      t.string :recruiter_email
      t.string :recruiter_key
      t.string :candidate_email
      t.string :candidate_key
      t.string :hiring_manager_email
      t.string :hiring_manager_key
      t.string :job_title
      t.string :job_description

      t.timestamps
    end
  end
end
