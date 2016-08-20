class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def vote_count
    votes.sum(:value)
  end
end
