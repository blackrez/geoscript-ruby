require "spec_helper"
require_relative '../../lib/geoscript'
include GeoScript::Geom

describe LineString do
  describe "#linestring" do
    it "return LineString instance from an array and get array instance" do
      coord = [[2,3], [4,1]]
      l = LineString.new coord
      expect(l.instance_of? LineString).to eq(true)
      expect(l.first).to eq(Point.new coord.first)
    end
  end
  
  describe "#wkt" do
   it "return a WKT" do
    coord = [[2,3], [4,1]]
    l = LineString.new coord
    expect(l.to_wkt).to eq("LINESTRING (2 3, 4 1)")
   end
  end
  
  describe "#wkt" do
    it "return a WKT" do
      coord = [[2,3], [4,1]]
      l = LineString.new coord
      expect(l.to_wkb).to eq("0000000002000000024000000000000000400800000000000040100000000000003FF0000000000000")
   end
  end
end