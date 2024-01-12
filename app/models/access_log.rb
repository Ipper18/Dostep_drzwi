class AccessLog < ApplicationRecord
  # Log należy do karty i do pomieszczenia
  belongs_to :card
  belongs_to :room

  def self.record_log(user_id, action, details)
   create(user_id: user_id, action: action, details: details)
  end
end
