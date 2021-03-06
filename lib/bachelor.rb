def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
    if info["status"] == "Winner"
      return info["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant, info|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  num_contestants = 0
  data[season].each do |info|
    info.each do |age, value|
      if age == "age"
        age_total += value.to_f
        num_contestants += 1
      end
    end
  end
  average = (age_total / num_contestants).round
  return average
end
