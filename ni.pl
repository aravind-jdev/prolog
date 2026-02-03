delicious(cakes).
delicious(pies).
delicious(cookies).
delicious(chocolate).
spicy(pickles).
relishes(priya,coffee).
likes(priya, Food):- delicious(Food).
likes(prakash, Food):- delicious(Food), spicy(Food).
