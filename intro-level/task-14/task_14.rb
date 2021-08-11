def alternatingSums(a)
    team_1 = []
    team_2 = []

    a.each.with_index { |person, idx| idx.even? ? team_1.push(person) : team_2.push(person) }

    weights_1 = 0
    team_1.each { |weight| weights_1 += weight}
    weights_2 = 0
    team_2.each { |weight| weights_2 += weight}

    weights = [weights_1, weights_2]
end