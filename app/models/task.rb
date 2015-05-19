class Task < ActiveRecord::Base
  def closed?
    not closed_at.nil?
  end

  def self.open_tasks
    where(closed_at: nil).count('id')
  end
end
