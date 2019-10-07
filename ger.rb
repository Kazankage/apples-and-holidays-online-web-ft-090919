holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def specific_supply(hash, season, holiday, index_number = 0..)
  hash[season][holiday][index_number]
end

#print specific_supply(holiday_supplies, :winter, :christmas)

def add_supplies(hash, season, holiday, holiday2 = nil, supply_to_add, other)
  hash[season][holiday]<< supply_to_add
  if holiday2 == nil 
  else
    if other == nil
    else
    hash[season][holiday2] << other
    end
  end
  return hash[season]
end

#puts add_supplies(holiday_supplies, :winter, :christmas, :new_years, "snow", "triangle")

#puts add_supplies(holiday_supplies, :spring, :memorial_day, "pie", "nothing")

def new_holiday(hash, season, new, supplies)
  hash[season][new] = supplies
  hash
end

#puts new_holiday(holiday_supplies, :winter, :elsa, ["pie", "snow"])

def collect_supplies_for_season(hash, season)
  hash[season].values.flatten
end

#print collect_supplies_for_season(holiday_supplies, :summer)

def all_supplies_in_holidays(hash)
  hash.collect do |season, holiday|
    puts "#{season.capitalize}" 
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").each do |word| word.capitalize! end.join(" ")}: #{supplies.join(", ")}"
    end
  end
  return
end

#puts all_supplies_in_holidays(holiday_supplies)

#Winter:
#  Christmas: Lights, Wreath
#  New Years: Party Hats
#Summer:
#  Fourth Of July: Fireworks, BBQ
#Fall:
#  Thanksgiving: Turkey
#Spring:
#  Memorial Day: BBQ

def bbq_days(hash)
  hash.each do |season, holiday|
    puts season holiday
    end
end

=begin holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
=end
print bbq_days(holiday_supplies)

