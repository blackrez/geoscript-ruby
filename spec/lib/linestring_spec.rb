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
end
