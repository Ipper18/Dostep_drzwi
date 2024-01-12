class Permission < ApplicationRecord
  # Uprawnienie należy do użytkownika i do pomieszczenia
  belongs_to :user
  belongs_to :room

  after_create :log_create
  after_update :log_update
  after_destroy :log_destroy

  private

  def log_create
    AccessLog.record_log(self.user_id, 'Create', 'Permission created')
  end

  def log_update
    AccessLog.record_log(self.user_id, 'Update', 'Permission updated')
  end

  def log_destroy
    AccessLog.record_log(self.user_id, 'Destroy', 'Permission destroyed')
  end
end
