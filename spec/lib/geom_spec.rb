require "spec_helper"
require_relative '../../lib/geoscript'
include GeoScript::Geom

describe Point do
  describe "#wkt" do
    it "return a wkt from a Point" do
      p = Point.new -111.0, 45.7
      p.to_wkt.should == "POINT (-111 45.7)"
    end
  end
end
