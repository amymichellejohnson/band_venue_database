require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  @bands= Band.all()
  @venues = Venue.all()
  erb(:index)
end

post("/bands") do
  name = params.fetch("name")
  Band.create({:name => name})
  @bands=Band.all()
  redirect("/")
end

get("/bands/:id") do
  id = params.fetch("id")
  @band = Band.find(id)
  erb(:band_info)
end

delete("/bands/:id") do
  id = params.fetch("id")
  @band = Band.find(id)
  @band.delete()
  redirect("/")
end

patch("/bands/:id") do
  id = params.fetch("id")
  @band = Band.find(id)
  name = params.fetch("name")
  @band.update({:name =>name})
  erb(:band_edit)
end

get("/bands/add_venues/:id") do
  id = params.fetch("id")
  @band = Band.find(id)
  @venues= Venue.all()
  erb(:band_add_venue)
end

patch("/bands/add_venues/:id") do
  band_id = params.fetch("id")
  @band = Band.find(band_id)
  venue_ids = params.fetch("venue_ids")
  @venues = Venue.all()
  @band.update({:venue_ids => venue_ids})
  erb(:band_add_venue)
end

get("/bands/edit/:id") do
  id = params.fetch("id")
  @band = Band.find(id)
  erb(:band_edit)
end

# get("/bands/venues/delete/:id") do
#   params.fetch('id')
#
#
# end

post("/venues") do
  name = params.fetch("name")
  Venue.create({:name => name})
  @venues = Venue.all()
  redirect("/")
end

get("/venues/delete/:id") do
  id = params.fetch("id")
  @venue = Venue.find(id)
  @venue.delete()
  redirect("/")
end
