# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator


def pmt(rate, nper, pv)
  rate12 = rate/12
  numerator = pv*rate12
  denomenator = 1-(1+rate12)**-nper
  pmt = numerator/denomenator
end

# Example usage of the method:

puts "Your monthly payment will be #{pmt(0.065, 360, 200000)}."
