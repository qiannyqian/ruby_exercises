require 'rspec'
require_relative 'roman_numerals'

describe "roman_numerals.rb" do
  describe "#to_roman" do
    context "when input is 4" do
      it "should return \"IIII\"" do
        expect(to_roman(4)).to eq "IIII"
      end
    end

    context "when input is 9" do
      it "should return \"VIIII\"" do
        expect(to_roman(9)).to eq "VIIII"
      end
    end

    context "when input is 13" do
      it "should return \"XIII\"" do
        expect(to_roman(13)).to eq "XIII"
      end
    end

    context "when input is 1453" do
      it "should return \"MCCCCLIII\"" do
        expect(to_roman(1453)).to eq "MCCCCLIII"
      end
    end

    context "when input is 1646" do
      it "should return \"MDCXXXXVI\"" do
        expect(to_roman(1646)).to eq "MDCXXXXVI"
      end
    end
  end
end
