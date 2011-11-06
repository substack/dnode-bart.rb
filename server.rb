require 'rubygems'
require 'dnode'
require 'bart/station'

DNode.new({
    :list => Bart::Station::LIST,
    :names => Bart::Station::ID_TO_NAME,
    :departures => lambda do |name,cb|
        station = Bart::Station.new(name)
        station.load_departures
        if cb.respond_to? :call then
            cb.call(station.departures)
        end
    end,
}).listen(5050)
