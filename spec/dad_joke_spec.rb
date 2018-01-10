require 'spec_helper'

describe DadJoke do

  before(:all) do
    @joke = DadJoke.new.random_joke
  end

  context 'Dad joke api' do

   it "should return a string for joke" do
     expect(@joke.joke).to be_a(String)
   end

   it "should return a string for id" do
     expect(@joke.id).to be_a(String)
   end

   it "should return a string for id" do
     expect(@joke.id.length).to eq(11)
   end

   it "should return a integer for status" do
     expect(@joke.status).to be_a(Integer)
   end

   it "should return 200 for status" do
     expect(@joke.status).to eq 200
   end

 end

end
