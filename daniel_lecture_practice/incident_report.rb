class Incident_Report

attr_accessor :car_brand, :region, :counter
attr_reader :report_description

@@counter = 0

@@all = []

def initialize(car_brand, region, report_description)
  if car_brand.class == String
    car_brand = Car_Brand.find_by_name_or_create(car_brand, region)
  end

  @car_brand = car_brand
  @region = region
  @report_description = report_description
  @id = Incident_Report.assign_id
  @@all << self
end

  def self.assign_id
    self.counter +=1
    self.counter
  end

  def self.all
    @@all
  end



end
