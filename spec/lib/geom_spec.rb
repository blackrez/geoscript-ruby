require "spec_helper"
require_relative '../../lib/geoscript'
include GeoScript::Geom

describe Point do
  describe "#wkt" do
    it "return a wkt from a Point instance" do
      p = Point.new -111.0, 45.7
      expect(p.to_wkt).to eq("POINT (-111 45.7)")
    end
  end

  describe "#wkb" do
    it "return a wkb from a Point instance" do
      p = Point.new -111.0, 45.7
      expect(p.to_wkb).to eq("0000000001C05BC000000000004046D9999999999A")
    end
  end

  describe "#json" do
    it "return a geojson from a Point instance" do
      p = Point.new -111.0, 45.7
      expect(p.to_json).to eq("{\"type\":\"Point\",\"coordinates\":[-111,45.7]}")
    end
  end
end
