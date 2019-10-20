int: n;
set of int: INDEX = 1..n;
array[INDEX] of var 0..3: x;
constraint x[1] = 0;
constraint x[n] = 3;
constraint forall(i in 1..n-1)(x[i] + x[i+1] <= 3);
%constraint forall(i in 1..n)(if i mod 3 == 0 then x[i] >= 2 endif);
constraint forall(i in INDEX where i mod 3 = 0)(x[i] >= 2);

solve maximize sum(x);

output [show(sum(x)), " = ", show(x)];