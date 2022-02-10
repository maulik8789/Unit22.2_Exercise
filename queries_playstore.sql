-- Comments in SQL Start with dash-dash --
playstore=# SELECT app_name FROM analytics WHERE id = 1880
;
        app_name
-------------------------
 Web Browser for Android
(1 row)

 SELECT id, app_name FROM analytics WHERE last_updated = '8/1/201
8';

playstore=# SELECT id, app_name FROM analytics WHERE last_updated = '8/1/201
8';
playstore=# SELECT category, COUNT(*) FROM analytics GROUP BY category;
      category       | count
---------------------+-------
 BOOKS_AND_REFERENCE |   191
 COMMUNICATION       |   342
 BEAUTY              |    46
 EVENTS              |    52
 PARENTING           |    59
 PHOTOGRAPHY         |   313
 GAME                |  1110
 BUSINESS            |   313
 SOCIAL              |   269
 MEDICAL             |   350
 TOOLS               |   753
 TRAVEL_AND_LOCAL    |   234
 ART_AND_DESIGN      |    63
 LIFESTYLE           |   319
 WEATHER             |    79
 COMICS              |    59
 PRODUCTIVITY        |   360
 PERSONALIZATION     |   329
 FINANCE             |   331
 SPORTS              |   338
 ENTERTAINMENT       |   149
 NEWS_AND_MAGAZINES  |   249
 HOUSE_AND_HOME      |    82
 SHOPPING            |   241
 DATING              |   204
 HEALTH_AND_FITNESS  |   298
 EDUCATION           |   156
 MAPS_AND_NAVIGATION |   129
 LIBRARIES_AND_DEMO  |    80
 FOOD_AND_DRINK      |   110
 FAMILY              |  1789
 VIDEO_PLAYERS       |   165
 AUTO_AND_VEHICLES   |    75
(33 rows)

playstore=# SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;


 SELECT category, AVG(rating) FROM analytics GROUP BY category OR
DER BY AVG DESC;
      category       |        avg
---------------------+--------------------
 EVENTS              |  4.395238104320708
 EDUCATION           |   4.38903223006956
 ART_AND_DESIGN      |  4.347540949211746
 BOOKS_AND_REFERENCE | 4.3423728633061645
 PERSONALIZATION     |    4.3283387457509
 BEAUTY              |  4.299999970656175
 GAME                |  4.287167731498383
 PARENTING           |  4.285714266251545
 HEALTH_AND_FITNESS  | 4.2743944663902464
 SHOPPING            |  4.253648051376507
 SOCIAL              |  4.245669291244717
 WEATHER             |   4.24399998664856
 SPORTS              |  4.233333332576449
 PRODUCTIVITY        |  4.212173904543338
 AUTO_AND_VEHICLES   |  4.200000017881393
 HOUSE_AND_HOME      |  4.197368430463891
 PHOTOGRAPHY         |  4.196116511489967
 MEDICAL             | 4.1926829182520144
 FAMILY              | 4.1904873752761995
 LIBRARIES_AND_DEMO  | 4.1784615259904125
 FOOD_AND_DRINK      |  4.155660354866172
 COMICS              |  4.155172401461108
 COMMUNICATION       |  4.151234589241169
 FINANCE             |  4.146835436549368
 NEWS_AND_MAGAZINES  |  4.130131007281974
 ENTERTAINMENT       |   4.12617449632427
 BUSINESS            |  4.116666667004849
 TRAVEL_AND_LOCAL    |   4.10179372753263
 LIFESTYLE           |  4.077076400237226
 VIDEO_PLAYERS       |  4.059748438919115
 MAPS_AND_NAVIGATION |  4.058196711735647
 TOOLS               |  4.050627608678331
 DATING              |  3.993684190825412
(33 rows)

playstore=# SELECT app_name, price, rating FROM analytics GROUP BY app_name, rating, price ORDER BY price DESC LIMIT 1;
      app_name      | price | rating
--------------------+-------+--------
 Cardi B Piano Game |   400 |    3.6
(1 row)

playstore=# SELECT app_name FROM analytics WHERE min_installs <=50 AND
rating > 0 ORDER BY rating DESC;
playstore=#

playstore=# SELECT app_name FROM analytics
playstore-# WHERE rating < 3
playstore-# AND reviews >=10000;
                    app_name
-------------------------------------------------
 The Wall Street Journal: Business & Market News
 Vikings: an Archer’s Journey
 Shoot Em Down Free
(3 rows)

playstore=# SELECT app_name, price FROM analytics
WHERE price BETWEEN 0.1
AND 1 ORDER BY reviews DESC LIMIT 10;
                  app_name                   | price
---------------------------------------------+-------
 Free Slideshow Maker & Video Editor         |  0.99
 Couple - Relationship App                   |  0.99
 Anime X Wallpaper                           |  0.99
 Dance On Mobile                             |  0.99
 Marvel Unlimited                            |  0.99
 FastMeet: Chat, Dating, Love                |  0.99
 IHG®: Hotel Deals & Rewards                 |  0.99
 Live Weather & Daily Local Weather Forecast |  0.99
 DreamMapper                                 |  0.99
 Můj T-Mobile Business                       |  0.99
(10 rows)

playstore=# SELECT app_name, last_updated FROM analytics ORDER BY last_updat
ed ASC LIMIT 1;
  app_name  | last_updated
------------+--------------
 CP Clicker | 2010-05-21
(1 row)

playstore=# SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1
playstore-# ;
      app_name      | price
--------------------+-------
 Cardi B Piano Game |   400
(1 row)

playstore=# SELECT SUM(reviews) FROM analytics;
    sum
------------
 4814575866
(1 row)

playstore=# SELECT category, COUNT(*) FROM analytics GROUP BY category HAVIN
G COUNT(*)>300;
    category     | count
-----------------+-------
 COMMUNICATION   |   342
 PHOTOGRAPHY     |   313
 GAME            |  1110
 BUSINESS        |   313
 MEDICAL         |   350
 TOOLS           |   753
 LIFESTYLE       |   319
 PRODUCTIVITY    |   360
 PERSONALIZATION |   329
 FINANCE         |   331
 SPORTS          |   338
 FAMILY          |  1789
(12 rows)

playstore=# SELECT app_name, reviews, min_installs, min_installs/reviews as prop FROM analytics GROUP BY app_name, reviews, min_installs HAVING min_installs>=100000 ORDER BY prop DESC LIMIT 1;
     app_name     | reviews | min_installs |  prop
------------------+---------+--------------+--------
 Kim Bu Youtuber? |      66 |     10000000 | 151515
(1 row)
