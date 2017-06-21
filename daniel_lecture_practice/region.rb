class Region

  attr_accessor :region

  @@all = []

  def initialize(region)
    @region = region
    @@all << self
  end

  def self.all
    @@all
  end

  def find_reports_by_region
    Incident_Report.all.find_all {|report| report.region == self}
  end

  def find_all_brands_by_region
    self.find_reports_by_region.map do |report|
      report.car_brand
    end
  end



end
