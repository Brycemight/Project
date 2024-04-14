select * 
from `twich game data`.twitch_game_data tgd 

-- What is the top 10 games watched in year 2021 around November? 
select  
    Game ,
    `Month` ,
    `Year` ,
    MAX(Hours_watched) AS peak_viewership
from 
   `twich game data`.twitch_game_data tgd 
where 
 `Year` =2021 and `Month` =11
GROUP BY 
    game, month, year
order by  peak_viewership desc 
limit 10;

-- What is the top 10 games with the most viewers in year 2021 around November? 

select  
    Game ,
    `Month` ,
    `Year` ,
    MAX(Peak_viewers) AS peak_viewership
from 
   `twich game data`.twitch_game_data tgd 
where 
 `Year` =2021 and `Month` =11
GROUP BY 
    game, month, year
order by  peak_viewership desc 
limit 10;


-- What is the most hours watched in year 2021?

select `Year` ,max(Hours_watched) 
from `twich game data`.twitch_game_data tgd 
where `Month` = 4 and `Year` =2021
group by `Year`  

-- What is the most viewers in year 2021?
select `Year` ,max(Peak_viewers) 
from `twich game data`.twitch_game_data tgd 
where `Month` = 11 and `Year` =2021
group by `Year`  

-- What is the most hours streamed in year 2021?
select `Year` ,sum(Hours_streamed) 
from `twich game data`.twitch_game_data tgd 
where `Month` = 1 and `Year` =2021
group by `Year`  

