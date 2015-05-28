require 'spec_helper'

describe Wikidata::Property::CommonsMedia do
  let(:image) {
    described_class.new(
      {
	"id" => "Q6882$79AA5FED-4223-4FB2-9B7B-C10BA965CF02",
	"mainsnak" => {
	  "snaktype" => "value",
	  "property" => "P18",
	  "datatype" => "commonsMedia",
	  "datavalue" => {
	    "value" => "James Joyce in 1915.jpg", "type"=>"string"
	  }
	},
	"type" => "statement",
	"rank" => "normal",
	"references" => [
	  {
	    "hash" => "0a30d46951f1fc618176a69a22625b069df151b9",
	    "snaks" => {
	      "P143" => [
		{
		  "snaktype" => "value",
		  "property" => "P143",
		  "datatype" => "wikibase-item",
		  "datavalue" => {
		    "value" => {
		      "entity-type" => "item", 
		      "numeric-id" => 15156541
		    },
		    "type" => "wikibase-entityid"
		  }
		}
	      ]
	    },
	    "snaks-order" => ["P143"]
	  }
	]
      }
    )
  }

  it 'should parse commons media' do 
    image.should be_kind_of Wikidata::Property::CommonsMedia
    image.value.should eq "James Joyce in 1915.jpg"
  end

end


