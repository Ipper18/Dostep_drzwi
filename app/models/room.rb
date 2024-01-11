class Room < ApplicationRecord
  # Jeśli jedno pomieszczenie ma wiele uprawnień
  has_many :permissions, dependent: :destroy

  # Jeśli chcesz śledzić logi wejścia do pomieszczenia
  has_many :logs, dependent: :destroy
end
