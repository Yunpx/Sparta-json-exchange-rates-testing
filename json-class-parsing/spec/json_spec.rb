require_relative 'spec_helper'
require_relative '../parse_json.rb'
require 'json'

describe 'Create tests for a hash' do
  before(:each) do
    @json_file = ParseJSON.new("json_exchanges_rates.json")
  end

  it "should have a base of EUR" do
    expect(@json_file.json_file["base"]).to eq("EUR")
  end

  it "reading dates" do
    expect(@json_file.json_file["date"]).to eq("2017-07-26")
  end
  # it "reading dates" do
  #   expect(@json_file.json_file["date"]).to be_a(Date)
  # end

  it "reading specific rates values rates" do
    expect(@json_file.json_file["rates"]["BGN"]).to eq(1.9558)
  end
  it "should have 31 keys" do
    expect(@json_file.json_file["rates"].keys.length).to eq(31)
  end

  it "reading specific rates values rates" do
    expect(@json_file.json_file["rates"]["BGN"]).to be_a(Float)
  end


  it "reading first country name rates" do
    expect(@json_file.json_file["rates"].first[0]).to eq("AUD")
  end

  it "reading first country name value" do
    expect(@json_file.json_file["rates"].first[1]).to eq(1.4717)
  end

end
