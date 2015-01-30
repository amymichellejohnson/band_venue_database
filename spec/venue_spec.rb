require("spec_helper")

describe(Venue) do
  it {should have_and_belong_to_many(:bands)}

  it("validates the presence of a venue entered") do
    venue= Venue.new({:name =>""})
    expect(venue.save()).to(eq(false))
  end

  it("capitalizes each word of the venue's name") do
    venue= Venue.create({:name=> "doug fir"})
    expect(venue.name()).to(eq("Doug Fir"))
  end
end
