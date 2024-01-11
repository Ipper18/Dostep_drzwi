class AccessLog < ApplicationRecord
  # Log należy do karty i do pomieszczenia
  belongs_to :card
  belongs_to :room
end
