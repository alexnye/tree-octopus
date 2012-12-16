# get the numbers 0 - 15 in binary as all possible starting toggler states
# add 2 at the end for the constant truth teller

# generation could be simplified to just making arrays with 0-4 1s with the
# rest being 0s

starting_toggler_states = (1..4).map do |x|
  ([0] * (4 - x)) + ([1] * x) + [2]
end

possible_configurations = []

starting_toggler_states.each do |x|
  x.permutation(5).each do |y|
    possible_configurations << y unless possible_configurations.index y
  end
end

possible_configurations.each do |x| puts x.join end

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

# ask 2 questions, each returning a boolean value for whether the result met
# expectations or not.  Use inject to find the logical AND sum of the questions
# and return when both are satisfied to indicate a succesfull question pair.
# Actually should supply the sub array bar to question procs one by one and
# they should return a set of indices along with a given known property of
# elements under those indices so that another function may reason over them
# to determine the final result of this particular test.
def take_questions pair
  return pair.inject(true) {|x| ask bar x}
end

# array of paired procs as questions iterated through and asked.
# each encodes the expected

gets
