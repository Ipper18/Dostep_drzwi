class Permission < ApplicationRecord
  # Uprawnienie należy do użytkownika i do pomieszczenia
  belongs_to :user
  belongs_to :room

#  after_create :log_create
#  after_update :log_update
#  after_destroy :log_destroy

  private

#  def log_create
#    Access_Logs.record_log(self.user_id, 'Create', 'Permission created')
#  end

#  def log_update
#    Access_LogsLog.record_log(self.user_id, 'Update', 'Permission updated')
#  end

#    Access_Logs.record_log(self.user_id, 'Destroy', 'Permission destroyed')
#  end
end
