# Orders and costs

# Problem Statement
# A restaurant has incoming orders for which you need to compute the costs based on the menu.

# You might get multiple orders at times.

# Examples:
# If the order is {:rice => 1, :noodles => 1},
# and the menu is {:rice => 3, :noodles => 2}, then the cost is 5.

# If the orders are {:rice => 1, :noodles => 1}
# and {:rice => 2, :noodles => 2}
# and the menu is {:rice => 3, :noodles => 2}, then the cost is 15.

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.each_with_object([]) do |order, prices|
      order.each_key { prices << @menu[_1] * order[_1] }
    end.sum
  end

  # def cost(*orders)
  #   orders.inject(0) do |total_cost, order|
  #     total_cost + order.keys.inject(0) { |cost, key| cost + @menu[key] * order[key] }
  #   end
  # end
end

menu = { rice: 3, noodles: 2 }
restaurant = Restaurant.new(menu)

p restaurant.cost({ rice: 1, noodles: 1 }) # => 5
p restaurant.cost({ rice: 1, noodles: 1 }, { rice: 2, noodles: 2 }) # => 15
