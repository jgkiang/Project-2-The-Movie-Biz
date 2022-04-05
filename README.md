# Project-2-The-Movie-Biz

PROPOSAL

We intend to determine how much an Oscar win or nomination effects future theatrical box office numbers.  And have these numbers been impacted by the decreasing popularity of awards shows over time?  We may also explore the effect of critic ratings (from IMDB or MetaCritic) and whether there is any correlation between those ratings and Oscar wins and/or box office numbers.

EXTRACT

Our data sources are:
Kaggle - We found a csv that included info on all the Oscar winners and nominees.
OMDB - We used the OMDB API to obtain box office data and metascores for each film.

TRANSFORM

For the Oscar csv file, we had to filter only the Best Picture winners and nominees from 2001 to 2019. (The reason for this timeframe is because Metacritic was launched in 2001.)

Then to obtain box office and Metascore information, we took data from the OMDB API and converted that into a CSV. 

Finally, we merged the two dataframes together to give us data that could be loaded into our final database.

LOAD


ANALYSIS


CONCLUSION
