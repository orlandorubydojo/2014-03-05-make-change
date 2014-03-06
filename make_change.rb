class MakeChange

  def change(amount)
    quarters = amount / 25
    amount = amount % 25

    dimes = amount / 10
    amount = amount % 10

    nickels = amount / 5
    amount = amount % 5

    pennies = amount / 1

    {1 => pennies, 5 => nickels, 10 => dimes, 25 => quarters}
  end

end
