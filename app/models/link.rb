class Link < ApplicationRecord
  def self.top_ten
    order(read_count: :desc).limit(10)
  end
end
