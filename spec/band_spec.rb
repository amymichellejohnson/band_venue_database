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
end
