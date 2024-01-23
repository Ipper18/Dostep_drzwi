class Card < ApplicationRecord

  belongs_to :user


  has_many :access_logs, dependent: :destroy
  has_many :permissions

  #after_create :log_create
  #after_update :log_update
  #after_destroy :log_destroy

  private

  #def log_create
  #  Access_Logs.record_log(self.user_id, 'Create', 'Card created')
  #end

  #def log_update
  #  Access_Logs.record_log(self.user_id, 'Update', 'Card updated')
  #end

  #def log_destroy
  #  Access_Logs.record_log(self.user_id, 'Destroy', 'Card destroyed')
  #end
end
