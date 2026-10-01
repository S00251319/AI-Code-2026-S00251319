% Lecturer facts
lecturer(paul).
lecturer(viv).
lecturer(francis).

% Module facts
module(ai).
module(csharp101).
module(maths101).
module(software_engineering).

% Teaching facts
teaches(paul, ai).
teaches(viv, csharp101).
teaches(francis, maths101).

% Student facts
student(ursula, bsc4).
student(fred, bsc4).
student(mary, bsc1).

% BSc module rules
takes(Student, ai) :-
    student(Student, bsc4).

takes(Student, software_engineering) :-
    student(Student, bsc4).

takes(Student, csharp101) :-
    student(Student, bsc1).