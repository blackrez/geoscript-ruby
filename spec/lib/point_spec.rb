require "spec_helper"
require_relative '../../lib/geoscript'
include GeoScript::Geom

describe Point do

  describe "#point" do
    it "return a x and y from a Point instance" do
      p = Point.new -111.0, 45.7
      expect(p.x).to eq(-111)
      expect(p.y).to eq(45.7)
    end
  end

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
    it "return a wkb from a Point instance" do
      p = Point.new -111.0, 45.7
      expect(p.to_json).to eq("{\"type\":\"Point\",\"coordinates\":[-111,45.7]}")
    end
  end


  describe "#MultiPoint" do
    it "return a MultiPoint instance" do
      p = Point.new -111.0, 43.8
      p1 = Point.new 0, 0
      mp = p + p1
      expect(mp.instance_of? MultiPoint).to eq(true)
      expect(mp.intersects? p).to eq(true)
      expect(mp.intersects? p1).to eq(true)
    end
  end

  describe "#Buffer" do
    it "return a Polygon instance" do
      p = Point.new -111.0, 43.8
      pb = p.buffer 5
      expect(pb.instance_of? Polygon).to eq(true)
    end
  end

  describe "#Intersects" do
    it "return a true when intersects instance" do
      p = Point.new -111.0, 43.8
      pb = p.buffer 5
      expect(pb.intersects? p).to eq(true)
    end

    describe "#Bounds" do
      it "return a bounds instance" do
        p = Point.new -111.0, 43.8
        b = p.bounds
        expect(b).to eq(Bounds)
      end
    end
  end
end