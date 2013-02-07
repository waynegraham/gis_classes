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

  describe "GET '/bhda'" do
    it "should not be successfull" do
      get '/bhda'
      last_response.should_not be_ok
    end
  end

  describe "GET '/cources/foo'" do
    it "should be successfull" do
      get '/courses/foo'
      last_response.should be_ok
    end

    it "should have 'foo' as the heading" do
      get '/courses/foo'
      #last_response.body.should has_content? 'Foo'
    end
  end
end
