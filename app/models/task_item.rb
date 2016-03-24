class TaskItem < ActiveRecord::Base
  belongs_to :task_list
    
    #completed field is not blank
    def completed?
        !completed_at.blank?
    end
end
