class HomeController < ApplicationController
  require 'mlb_stats_api'
  require 'json'


  def index
    # Establish connection to stats api
    @client = MLBStatsAPI::Client.new

    # Get the list of schedule of games for date range of only today
    @schedule = @client.schedule({sport_id: 1, date: Date.today})

    # Pull out Dates from schedule
    @dates = @schedule['dates']

    # Get today from result
    @date = @dates[0]

    # Get games from today
    @games = @date['games']
  end
end
