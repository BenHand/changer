class Changer
  def self.run(amt)
    coins = []
    [25,10,5,1].each do |coin|
      times = amt / coin
      coins += [coin] * times
      amt -= coin * times
    end
      return coins
  end
end
# Original Train of Thought. Ben Hand - Gracie Xia
    # if amt % 25 == 0
    #   times = amt / 25
    #   coins += [25] * times
    #   return coins
    # elsif amt % 10 == 0
    #   times= amt / 10
    #   coins += [10] * times
    #   return coins
    # elsif amt % 5 == 0
    #   times = amt / 5
    #   coins += [5] * times
    #   return coins
    # elsif amt % 1 == 0
    #   times = amt / 1
    #   coins += [1] * times
    #   return coins
    # end
