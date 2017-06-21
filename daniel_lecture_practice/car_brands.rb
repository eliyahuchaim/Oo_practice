require 'pry'

class Car_Brand

  attr_accessor :origin_country, :name

  @@all = []

  def initialize(name, origin_country="Japan")
    @name = name
    @origin_country = origin_country
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name) #returns first car to match results
    self.all.find {|car_name| car_name.name == name }
  end

  def self.find_by_name_or_create(name, origin_country)
    return self.find_by_name(name) || Car_Brand.new(name)
    #name = self.find_by_name(name)
    #name ? name : Car_Brand.new(name)
  end

  def find_report
    Incident_Report.all.select {|brand| brand.car_brand == self }
  end

  def add_incident_report(region, report_description)
    Incident_Report.new(self, region, report_description)
  end

end



Pry.start
