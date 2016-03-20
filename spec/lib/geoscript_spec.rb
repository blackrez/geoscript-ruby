require "spec_helper"
require_relative '../../lib/geoscript'

describe GeoScript do
  describe '#version' do
    it "return the right version" do
      expect(GeoScript.version).to eq("0.1.0.pre")
      expect(GeoScript.geotools_version).to eq("15-SNAPSHOT")
    end
  end
end
