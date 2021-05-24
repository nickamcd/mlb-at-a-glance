class ApplicationController < ActionController::Base
  @client = MLBStatsAPI::Client.new
end
