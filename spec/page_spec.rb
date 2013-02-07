require 'spec_helper'

describe 'The GIS Classes App' do

  def app
    Sinatra::Application
  end

  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
    end
  end

  describe "GET '/courses/'" do
    it "should be successful" do
      get '/courses/'
      last_response.should be_ok
    end
  end

  describe "GET '/courses'" do
    it "should be successful" do
      get '/courses'
      last_response.should be_ok
    end
  end
end
