% solve( Node, Solution):
%    Solution is an acyclic path (in reverse order) between Node and a goal

solve( Node, Solution)  :-
  findall( Path, depthfirst( [], Node, Path), Solutions),
  member( Solution, Solutions).

% depthfirst( Path, Node, Solution):
%   extending the path [Node | Path] to a goal gives Solution

depthfirst( Path, Node, [Node | Path] )  :-
   goal( Node).

depthfirst( Path, Node, Sol)  :-
  s( Node, Node1, _),
  \+ member( Node1, Path),                % Prevent a cycle
  depthfirst( [Node | Path], Node1, Sol).

depthfirst2( Node, [Node], _)  :-
   goal( Node).

depthfirst2( Node, [Node | Sol], Maxdepth)  :-
   Maxdepth > 0,
   s( Node, Node1, _),
   Max1 is Maxdepth - 1,
   depthfirst2( Node1, Sol, Max1).


s(a,b,2).
s(a,c,2).
s(b,e,4).
s(b,f,7).
s(c,d,2).
s(c,g,4).
s(e,g,5).
s(f,g,5).
goal(g).
