class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :cards, dependent: :destroy

  has_many :permissions, dependent: :destroy

  has_many :rooms, through: :permissions

#  after_create :log_create
#  after_update :log_update
#  after_destroy :log_destroy

  private

#  def log_create
#    Access_Logs.record_log(self.id, 'Create', 'User created')
#  end

#  def log_update
#    Access_Logs.record_log(self.id, 'Update', 'User updated')
#  end

#  def log_destroy
#    Access_Logs.record_log(self.id, 'Destroy', 'User destroyed')
#  end
end
