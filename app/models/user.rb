class User < ApplicationRecord
  # Jeśli jeden użytkownik ma wiele kart
  has_many :cards, dependent: :destroy

  # Jeśli jeden użytkownik ma wiele uprawnień
  has_many :permissions, dependent: :destroy

  # Dodatkowo, jeśli chcesz mieć dostęp do pomieszczeń przez uprawnienia
  has_many :rooms, through: :permissions
end
