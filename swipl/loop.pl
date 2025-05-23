count_to_10(10):-write(10),nl. 
count_to_10(X):- 
    write(X),nl, 
    YisX+1, 
    count_to_10(Y). 
