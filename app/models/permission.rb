class Permission < ApplicationRecord
  # Uprawnienie należy do użytkownika i do pomieszczenia
  belongs_to :user
  belongs_to :room
end
