#loading Jason Zivkovic's superb worldfootballR package which this really easy!
#Zivkovic J (2022). worldfootballR: Functions to Extract and Clean World Football (Soccer) Data. R package version 0.5.2.3000, https://github.com/JaseZiv/worldfootballR. 
library(worldfootballR)

#extracting player data (name, transfermarkt url, age, nationality, position, squad and match appearances, minutes played, goals) for each league

eng1_team_urls <- tm_league_team_urls(country_name = "England", start_year = 2023)
eng1_teams <- tm_squad_stats(team_url = eng1_team_urls)

ita1_team_urls <- tm_league_team_urls(country_name = "Italy", start_year = 2023)
ita1_teams <- tm_squad_stats(team_url = ita1_team_urls)

spa1_team_urls <- tm_league_team_urls(country_name = "Spain", start_year = 2023)
spa1_teams <- tm_squad_stats(team_url = spa1_team_urls)

por1_team_urls <- tm_league_team_urls(country_name = "Portugal", start_year = 2023)
por1_teams <- tm_squad_stats(team_url = por1_team_urls)

fra1_team_urls <- tm_league_team_urls(country_name = "France", start_year = 2023)
fra1_teams <- tm_squad_stats(team_url = fra1_team_urls)

ger1_team_urls <- tm_league_team_urls(country_name = "Portugal", start_year = 2023)
ger1_teams <- tm_squad_stats(team_url = ger1_team_urls)

ned1_team_urls <- tm_league_team_urls(country_name = "Netherlands", start_year = 2023)
ned1_teams <- tm_squad_stats(team_url = ned1_team_urls)

bel1_team_urls <- tm_league_team_urls(country_name = "Belgium", start_year = 2023)
bel1_teams <- tm_squad_stats(team_url = bel1_team_urls)

mex1_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/liga-mx-clausura/startseite/wettbewerb/MEX1",start_year = 2023)
#https://www.transfermarkt.com/liga-mx-apertura/startseite/wettbewerb/MEX1
mex1_teams <- tm_squad_stats(team_url = mex1_team_urls)

usa1_team_urls <- tm_league_team_urls(country_name = "United States", start_year = 2023)
usa1_teams <- tm_squad_stats(team_url = usa1_team_urls)

bra1_team_urls <- tm_league_team_urls(country_name = "Brazil", ,start_year = 2023)
bra1_teams <- tm_squad_stats(team_url = bra1_team_urls)

arg1_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/professional-football-league/startseite/wettbewerb/AR1N",start_year = 2023)
arg1_teams <- tm_squad_stats(team_url = arg1_team_urls)

spa2_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/laliga2/startseite/wettbewerb/ES2",start_year = 2023)
spa2_teams <- tm_squad_stats(team_url = spa2_team_urls)

fra2_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/ligue-2/startseite/wettbewerb/FR2",start_year = 2023)
fra2_teams <- tm_squad_stats(team_url = fra2_team_urls)

eng2_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/championship/startseite/wettbewerb/GB2",start_year = 2023)
eng2_teams <- tm_squad_stats(team_url = eng2_team_urls)

ger2_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/2-bundesliga/startseite/wettbewerb/L2",start_year = 2023)
ger2_teams <- tm_squad_stats(team_url = ger2_team_urls)

ita2_team_urls <- tm_league_team_urls(country_name = "", league_url = "https://www.transfermarkt.com/serie-b/startseite/wettbewerb/IT2",start_year = 2023)
ita2_teams <- tm_squad_stats(team_url = ita2_team_urls)

#merging it all into a single dataframe

all_leagues_list <- list(eng1_teams,eng2_teams,fra1_teams,fra2_teams,ita1_teams,ita2_teams,spa1_teams,spa2_teams,ger1_teams,ger2_teams,
                        por1_teams,bel1_teams,ned1_teams,usa1_teams,arg1_teams,mex1_teams,bra1_teams)
all_leagues_data <- Reduce(function(x,y) merge(x, y, all=TRUE), all_leagues_list)

#export as csv

write.csv(all_leagues_data,file = "C:\\Users\\alrav\\Documents\\Football\\all_leagues_tsfmkt_data.csv")
