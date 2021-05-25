module HomeHelper
  def getLinescore(game_id)
    @client.linescore(game_id)
  end

  def getBoxscore(game_id)
    @client.boxscore(game_id)
  end

  def getLogo(team_id)
    case team_id
    when 108
      return "american_league/mlb-los-angeles-angels-logo-300x300.png"
    when 109
      return "national_league/mlb-arizona-diamondbacks-logo-300x300.png"
    when 110
      return "american_league/mlb-baltimore-orioles-logo-bird-300x300.png"
    when 111
      return "american_league/mlb-boston-red-sox-logo-300x300.png"
    when 112
      return "national_league/mlb-chicago-cubs-logo-300x300.png"
    when 113
      return "national_league/mlb-cincinnati-reds-logo-300x300.png"
    when 114
      return "american_league/mlb-cleveland-indians-logo-c-300x300.png"
    when 115
      return "national_league/mlb-colorado-rockies-logo-300x300.png"
    when 116
      return "american_league/mlb-detroit-tigers-logo-300x300.png"
    when 117
      return "american_league/mlb-houston-astros-logo-300x300.png"
    when 118
      return "american_league/mlb-kansas-city-royals-logo-300x300.png"
    when 119
      return "national_league/mlb-los-angeles-dodgers-logo-300x300.png"
    when 120
      return "national_league/mlb-washington-nationals-logo-300x300.png"
    when 121
      return "national_league/mlb-new-york-mets-logo-300x300.png"
    when 133
      return "american_league/mlb-oakland-athletics-logo-300x300.png"
    when 134
      return "national_league/mlb-pittsburgh-pirates-logo-300x300.png"
    when 135
      return "national_league/mlb-san-diego-padres-logo-300x300.png"
    when 136
      return "american_league/mlb-seattle-mariners-logo-300x300.png"
    when 137
      return "national_league/mlb-san-francisco-giants-logo-300x300.png"
    when 138
      return "national_league/mlb-st-louis-cardinals-logo-300x300.png"
    when 139
      return "american_league/mlb-tampa-bay-rays-logo-300x300.png"
    when 140
      return "american_league/mlb-texas-rangers-logo-300x300.png"
    when 141
      return "american_league/mlb-toronto-blue-jays-logo-300x300.png"
    when 142
      return "american_league/mlb-minnesota-twins-logo-300x300.png"
    when 143
      return "national_league/mlb-philadelphia-phillies-logo-300x300.png"
    when 144
      return "national_league/mlb-atlanta-braves-logo-300x300.png"
    when 145
      return "american_league/mlb-chicago-white-sox-logo-300x300.png"
    when 146
      return "national_league/mlb-miami-marlins-logo-300x300.png"
    when 147
      return "american_league/mlb-new-york-yankees-logo-300x300.png"
    when 158
      return "national_league/mlb-milwaukee-brewers-logo-300x300.png"
    else
      return "Major_League_Baseball_MLB_transparent_logo-300x300.png"
    end
  
  end
end
