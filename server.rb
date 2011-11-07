require 'dnode'
require 'bart/station'

DNode.new({
    :list => Bart::Station::LIST,
    :names => Bart::Station::ID_TO_NAME,
    :departures => lambda do |name,cb|
        station = Bart::Station.new(name)
        station.load_departures
        if cb.respond_to? :call then
            cb.call(station.departures.map { |dep|
                {
                    :destination => dep.destination.name,
                    :estimates => dep.estimates.map { |est|
                        {
                            :minutes => est.minutes,
                            :platform => est.platform,
                            :direction => est.direction,
                            :length => est.length,
                        }
                    }
                }
            })
        end
    end,
}).listen(5050)
