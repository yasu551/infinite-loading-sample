class Log < ApplicationRecord
  MAX_FETCH_SIZE = 40

  class << self
    def fetch(lower_id: nil)
      lower_id ||= last.id
      where(id: ((lower_id - MAX_FETCH_SIZE)...lower_id).to_a)
    end
  end
end
