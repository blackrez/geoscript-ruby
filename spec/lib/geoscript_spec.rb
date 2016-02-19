require "spec_helper"
require_relative '../../lib/geoscript'

describe GeoScript do
  describe '#version' do
    it "return the right version" do
      GeoScript.version.should ==  "0.1.0.pre"
      GeoScript.geotools_version.should == "10.0"
    end
  end
end
