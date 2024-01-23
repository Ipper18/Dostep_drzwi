class Room < ApplicationRecord
  # Jeśli jedno pomieszczenie ma wiele uprawnień
  #has_many :permissions, dependent: :destroy
  has_and_belongs_to_many :permissions

  # Jeśli chcesz śledzić logi wejścia do pomieszczenia
  has_many :access_logs, dependent: :destroy

  validates :room_name, presence: true
  validates :description, presence: true


end
