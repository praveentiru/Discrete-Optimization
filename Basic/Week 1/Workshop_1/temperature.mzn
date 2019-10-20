enum ACTIONS = {heat, strongly_heat, cool, strongly_cool, do_nothing};
array[ACTIONS] of int: cost = [1,5,3,9,0];
array[ACTIONS] of int: change = [1,4,-2,-5,0];

array[int] of int: readings;
int: start;
int: n = length(readings);

array[1..n+1] of var 25..30: building;
array[1..n+1] of var ACTIONS: choices;
array[1..n] of var int: choiceCost;
var int: totalcost;

constraint building[1] = start;
constraint forall(i in 2..n+1)(building[i] = (building[i - 1] + readings[i - 1]) div 2 + change[choices[i - 1]]);
constraint forall(i in 1..n)(choiceCost[i] = cost[choices[i]]);
constraint totalcost = sum(choiceCost);

solve minimize totalcost;

output ["temp = \(building)\n"];
output ["choice = \(choices)\n"];
output ["cost = \(totalcost)"];
