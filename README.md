# 2014-03-05-make-change
Suppose we are programming a vending machine. When a customer inserts money and
purchases a product from our machine, we might owe them change. The idea behind
this kata is simple: given an amount of money, return to the user the proper
amount of change. Essentially, make change for the user.

## Example Usage
Let's see how we aim to use this class when we're done.
```ruby
# Initialize the object we're going to use to make change
mc = MakeChange.new
# Pass in the amount of money we want change for
mc.change(83)
# Our program's output
=> [1 => 3, 5 => 1, 10 => 0, 25 => 3]
```
Notice that the sample output is a hash. The hash keys are the values (integers)
of each coin denomination. In this example, we are getting back 3 pennies, 1
nickel, and 3 quarters.

If we implement this and still have time, let's also add support for whole
dollars.
```ruby
mc = MakeChange.new
mc.change(104)
=> [1 => 4, 5 => 0, 10 => 0, 25 => 0, 100 => 1]
```
