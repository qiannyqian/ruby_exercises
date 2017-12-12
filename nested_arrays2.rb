# generates a tic tac toe array with the right ratio of 'x' and 'o'
def generate_realistic_tic_tac_toe
  array = ["x", "o"]
  9.times.map { 3.times.map {array.sample} }
end

p generate_realistic_tic_tac_toe

# turns the array of players into array of hashes
roster =
  [
    ["Number", "Name", "Postion", "Points per Game"],
    [12, "Joe Schmo", "Center", [14,32,7,0,23]],
    [9, "Ms. buckets", "Point Guard", [19,0,11,22,0]],
    [31, "Harvey Kay", "Shooting Guard", [0,30,16,0,25]],
    [18, "Sally Talls", "Power Forward", [18,29,26,31,19]],
    [22, "MK DiBoux", "Small Forward", [11,0,23,17,0]]
  ]

def convert_roster_format(roster)
  result = []

  (roster.size-1).times do |n|
    result << Hash[roster[0].zip(roster[n+1])]
  end

  result
end

p convert_roster_format(roster)

hashed_roster = convert_roster_format(roster)

p hashed_roster[1]
