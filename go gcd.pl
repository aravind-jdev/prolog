gcd(X,Y,GCD) :- X == Y, GCD = X.
gcd(X,Y,GCD) :- X > Y, Z is X - Y, gcd(Z,Y,GCD).
gcd(X,Y,GCD) :- X < Y, Z is Y - X, gcd(X,Z,GCD).
