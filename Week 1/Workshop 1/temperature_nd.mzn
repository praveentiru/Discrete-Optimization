array[int] of int: readings;
int: start;
int: n = length(readings);
array[1..n+1] of var int: building;

constraint building[1] = start;
constraint forall(i in 2..n+1)(building[i] = (building[i - 1] + readings[i - 1]) div 2);

solve satisfy;

output ["temp = \(building)"];
