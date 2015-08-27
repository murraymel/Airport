require 'open-uri'

class Destination
  attr_accessor :destination 

  
   
  url = "http://gogo-test.apigee.net/v1/aircraft/tailno/N328AA?
apikey=0XOAphNPi8w4nY1LAqVnhlUIPsBDV69Q"

    raw_response = open(url).read
    result = JSON.parse(raw_response)
    list_from_api = result[]

    array_of_destinations = Array.new

    list_from_api.each do |destination_hash|
      d = destination.new
      d.tailnumber = destination_hash["tailnumber"]
      d.flightnumber = destination_hash["flightnumber"]
      d.depature = destination_hash["depature"]
      d.airportcode = destination_hash["airportcode"]



      array_of_destinations << d
    end

    return array_of_destinations
  end



if airport_destination == 'd'