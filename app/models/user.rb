class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
  # Jeśli jeden użytkownik ma wiele kart
  has_many :cards, dependent: :destroy

  # Jeśli jeden użytkownik ma wiele uprawnień
  has_many :permissions, dependent: :destroy

  # Dodatkowo, jeśli chcesz mieć dostęp do pomieszczeń przez uprawnienia
  has_many :rooms, through: :permissions

  after_create :log_create
  after_update :log_update
  after_destroy :log_destroy

  private

  def log_create
    AccessLog.record_log(self.id, 'Create', 'User created')
  end

  def log_update
    AccessLog.record_log(self.id, 'Update', 'User updated')
  end

  def log_destroy
    AccessLog.record_log(self.id, 'Destroy', 'User destroyed')
  end
end
