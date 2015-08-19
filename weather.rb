require 'pry'


class Weather
  def self.gen
    # percentile via random number generation
    weather_score = rand(100)
    # one standard deviation branch
    if weather_score >= 32
      result = 3
    elsif weather_score >= 5
      result = 2
    else
      result = 1
    end
    result
  end

  def self.days x
    results = {}
    x.times do
      weather = self.gen
      if !results.has_key?(weather)
        results[weather] = 0
      end
      results[weather]+=1
    end
    results
  end

  def self.seasons x
    results = {}
    i = 0
    x.times do
      i += 1
      results[i]=self.days 100
    end
    results
  end

  def self.year
    year = self.seasons 4
    result = {}
    result[:spring] = year[1].sort
    result[:summer] = year[2].sort
    result[:autumn] = year[3].sort
    result[:winter] = year[4].sort
    result
  end


end

class Farm
  def initialize
  end
end

binding.pry
