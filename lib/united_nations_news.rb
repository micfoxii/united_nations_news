require 'open-uri'
require 'nokogiri'
require 'pry'

require "united_nations_news/version"
require "./united_nations_news/cli"
require "./united_nations_news/articles"
require "./united_nations_news/scraper"

module UnitedNationsNews
  class Error < StandardError; end
  # Your code goes here...
end
