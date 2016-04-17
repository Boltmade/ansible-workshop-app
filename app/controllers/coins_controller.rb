class CoinsController < ApplicationController
  before_action :get_coins, only: [:index, :create]

  def index
  end

  def create
    @coin = Coin.flip
    if @coin.save
      redirect_to root_path
    else
      render :index
    end
  end

  def reset
    Coin.destroy_all
    redirect_to root_path
  end

private

  def get_coins
    @heads = Coin.heads
    @tails = Coin.tails
    @last_flip = Coin.last
  end
end
