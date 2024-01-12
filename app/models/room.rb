class Room < ApplicationRecord
  # Jeśli jedno pomieszczenie ma wiele uprawnień
  has_many :permissions, dependent: :destroy

  # Jeśli chcesz śledzić logi wejścia do pomieszczenia
  has_many :logs, dependent: :destroy

  after_create :log_create
  after_update :log_update
  after_destroy :log_destroy

  private

  def log_create
    AccessLog.record_log(self.user_id, 'Create', 'Room created')
  end

  def log_update
    AccessLog.record_log(self.user_id, 'Update', 'Room updated')
  end

  def log_destroy
    AccessLog.record_log(self.user_id, 'Destroy', 'Room destroyed')
  end
end
