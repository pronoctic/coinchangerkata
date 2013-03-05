class CoinChanger
  def changer(n)
    coins = []
    [25,10,5,1].each do |coin|
      while n >= coin
        coins << coin
        n -= coin
      end
    end
   coins
  end
end
