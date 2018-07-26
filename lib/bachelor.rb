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
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
