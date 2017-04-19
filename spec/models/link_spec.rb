require 'rails_helper'

RSpec.describe Link, type: :model do
  describe "top_ten method" do
    it "displays links in descending order" do
      one = Link.create(title: "super neat", url: "http://www.neato.com", read_count: 4)
      two = Link.create(title: "wahoo", url: "http://www.google.com", read_count: 1)
      three = Link.create(title: "nice one", url: "http://www.chicken.com", read_count: 7)
      four = Link.create(title: "star trek is great", url: "http://www.dogs.com", read_count: 13)
      five = Link.create(title: "star wars is great", url: "http://www.elephants.com", read_count: 23)
      six = Link.create(title: "whoop", url: "http://www.whoop.com", read_count: 9)
      seven = Link.create(title: "penelope", url: "http://www.penelope.com", read_count: 2)
      eight = Link.create(title: "horses are great", url: "http://www.horses.com", read_count: 31)
      nine = Link.create(title: "save the whales", url: "http://www.whales.com", read_count: 47)
      ten = Link.create(title: "save the planet", url: "http://www.greenearth.com", read_count: 55)
      eleven = Link.create(title: "save the trees", url: "http://www.treesaregreat.com", read_count: 101)
      twelve = Link.create(title: "impeach trump", url: "http://www.loser.com", read_count: 44)

      links = Link.top_ten

      expect(links.first.read_count).to eq(101)
      expect(links.last.read_count).to eq(4)
      expect(links).to_not include(two.url)
    end
  end
end