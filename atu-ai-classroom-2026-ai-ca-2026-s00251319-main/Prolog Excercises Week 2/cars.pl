/*
- Facts about the cars (age, type, cost)
*/
car(3, ford, 5000).
car(2, opel, 6000).
car(5, toyota, 1000).
car(2, ford, 2000).

/*
- Facts about the ownership (name, age, type, cost)
*/
owns(joe, 3, ford, 5000).
owns(joe, 2, opel, 6000).
owns(mick, 5, toyota, 1000).
owns(mick, 2, ford, 2000).

/*
- Rule a: What cars exist?
*/
car(Type) :-
    car(_, Type, _).

/*
- Rule b: Who has a car that costs less than 3000 euros?
*/
car_less_than(Who, 3000) :-
    owns(Who, _, _, Price),
    Price < 3000.

/*
- Rule c: What cars does joe own?
*/
what_car(joe, Type) :-
    owns(joe, _, Type, _).
