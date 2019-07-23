require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative "./united_nations_news/version"
require_relative "./united_nations_news/cli"
require_relative "./united_nations_news/articles"
require_relative "./united_nations_news/scraper"

module UnitedNationsNews
  class Error < StandardError; end
  # Your code goes here...
end
