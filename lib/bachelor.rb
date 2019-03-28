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
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
