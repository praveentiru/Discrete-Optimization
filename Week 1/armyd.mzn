% Use this editor as a MiniZinc scratch book
int: budget;
var 0..100: F;
var 0..400: L;
var 0..500: Z;
var 0..150: J;
var int: Strength = 6*F + 10*L + 8*Z + 40*J;

constraint 13*F + 21*L + 17*Z + 100*J <= budget;

solve maximize 6*F + 10*L + 8*Z + 40*J;

output ["F = \(F), L = \(L), Z = \(Z), J = \(J), Strength = \(Strength)"];

