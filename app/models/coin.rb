class Coin < ApplicationRecord
  class << self
    def heads
      where(heads: true).count
    end

    def tails
      where(heads: false).count
    end

    def flip
      new(heads: [true, false].sample)
    end

    def flip!
      flip.save!
    end
  end

  def to_s
    heads? ? "Head" : "Tail"
  end
end
