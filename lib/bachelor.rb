require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = " "
  data[season].each do |person|
    if person["status"] == "Winner"
      nameArray = person["name"].split(' ')
      winner = nameArray[0]
    end
  end

  return winner
end

def get_contestant_name(data, occupation)
  data.each do |season, personArray|
    personArray.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, personArray|
    personArray.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end

  return count
end

def get_occupation(data, hometown)
  data.each do |season, personArray|
    personArray.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  average = 0
  data[season].each do |person|
    sum += person["age"].to_f
  end

  average = sum / data[season].length

  return average.to_i
end
