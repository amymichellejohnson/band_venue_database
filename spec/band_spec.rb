require('spec_helper')

describe(Band) do
  it {should have_and_belong_to_many(:venues)}

  it("validates the presence of a band entered") do
    band = Band.new({:name =>""})
    expect(band.save()).to(eq(false))
  end

  it("capitalizes each word of the band's name") do
    band = Band.create({:name => "the beatles"})
    expect(band.name()).to(eq("The Beatles"))
  end
  it("alphebetizes the list of bands") do
    band1 = Band.create({:name => "Janis Joplin"})
    band2 = Band.create({:name => "Beatles"})
    expect(Band.alphabetical()).to(eq([venue2, venue1]))
  end
end
