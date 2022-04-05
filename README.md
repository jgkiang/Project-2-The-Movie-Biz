# Project-2-The-Movie-Biz

PROPOSAL

<h3>PROPOSAL</h3>

We want to explore the relationship between movie Metacritic scores and box office numbers / Oscar nominations and wins. Is there any correlation between a film's score and how much money they make? And can the score even predict an Oscar win?

EXTRACT

Our data sources are:

Kaggle - We found a csv that included info on all the Oscar winners and nominees.

OMDB - We used the OMDB API to obtain box office data and metascores for each film.

TRANSFORM

For the Oscar csv file, we used only the Best Picture winners and nominees from 2001 to 2019. (The reason for this timeframe is because Metacritic was launched in 2001.)  This involved dropping the other categories (Best Director, Best Actor, etc.) and years (1921-2000).

Then to obtain box office and Metascore information, we took data from the OMDB API (using the Oscar nominees and winners from the previous CSV) and converted that into a new CSV. 

Finally, we merged the two dataframes into a single dataset, from which we were able to extract our tables and graphs (see final results.ipynb). 

LOAD

The data that we extracted and cleaned was then loaded into a Postgres database.

ANALYSIS



Metacritic Score vs Box Office ($)
![metascore_box office](/Data/metascore_box%20office.png)

What we discovered is that for the Oscar nominees and winners (2001-2019), the films with the lower critic scores "generally" made more money at the box office. Although the r-squared value does not indicate a strong relationship between Metacritic scores and box office value, the line of best fit does indicate a weak, negative correlation, meaning that as the Metacritic score decreases, the box office earnings tend to increase. 



Metacritic Score vs Oscar - Best Picture
![metascore_box office](/Data/metascore_oscar%20winners.png)

In the chart above, the red dots indicate Oscar winners, whereas the blue dots indicate the nominees. The goal of the visualization is to display the disparate Metacritic scores amoung those who won the Oscar for Best Picture versus those who were simply nominated. 10 out of 19 (>50%) of the Oscar winners had Metacritic scores in the top 3 of all scores for the year's nominees for Best Picture. This implies that the movies which won the Oscar for Best Picture, typically were also favored by Metacritic critics as well.  

