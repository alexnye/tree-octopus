# get the numbers 0 - 15 in binary as all possible starting toggler states
# add 2 at the end for the constant truth teller
starting_toggler_states = (1..4).map do |x|
  ([0] * (4 - x)) + ([1] * x) + [2]
end

possible_configurations = []

starting_toggler_states.each do |x|
  x.permutation(5).each do |y|
    possible_configurations << y unless possible_configurations.index y
  end
end

def verify_answer
  puts "f"
end

# return each successful identification of the truth-teller
def constraint_applicator
  
end

# iterate through the permutations and ask questions using a block
def ask bar
  bar.each do |arr|
    return yield arr
  end
end

=begin
Ask 2 questions to current toggler/truth-teller configuration.
Pass the results to constraint_applicator to determine candidate final result.
Finally, verify answer.

Each question proc should take an array and return a set of indices along with
a given known property of the elements under those indices
=end

def take_questions pair
  return pair.inject(true) {|x| ask bar x}
end

# array of paired procs as questions iterated through and asked.
# each encodes the expected

gets
