class Card < ApplicationRecord
  # Zakładając, że karta należy do użytkownika
  belongs_to :user

  # Jeśli karta ma wiele logów
  has_many :logs, dependent: :destroy
end
