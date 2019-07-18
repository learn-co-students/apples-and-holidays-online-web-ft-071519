require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
 holiday_hash[:winter].each do|holiday,array|
 array.push(supply)
 
 end
 return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
return holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season]={holiday_name => supply_array}

return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
return holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  newWord=""
  
holiday_hash.each do |season, holiday|
  puts season.to_s.capitalize! + ":"
 newArray=[]
  holiday.each do|holidayname,supply|
 
       if holidayname.to_s.include?"_"
         
          wordarray= holidayname.to_s.split("_")
       
            wordarray.each do|newName|
              newArray.push(newName.capitalize!)
              newWord = newArray.join(" ")
            end
        else
          newWord = holidayname.to_s.capitalize!
        end
      puts "  "+newWord + ": " + supply.join(", ")
    end 
  
  
  
  end
  

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
newarray=[]
holiday_hash.each do |season, holiday|
  
  holiday.each do|holidayname,supply|
    if supply.include?("BBQ")
      newarray.push(holidayname)
    end
  end

end
return newarray
end







