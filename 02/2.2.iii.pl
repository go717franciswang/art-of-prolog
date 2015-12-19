% course(Class, SatisfyingArea, MinGrade).
course(math101, ge, c).
course(math101, math, b).
course(eng101, ge, c).
course(eng101, eng, b).
course(math102, math, b).
course(eng102, eng, b).

% to get a degree, a student only require to pass a GE class 
% and 2 classes in his area of study
degree(math, Student) :- 
    satisfies(Student, ge, _),
    satisfies(Student, math, Class1),
    satisfies(Student, math, Class2),
    Class1 \== Class2.

degree(eng, Student) :-
    satisfies(Student, ge, _),
    satisfies(Student, eng, Class1),
    satisfies(Student, eng, Class2),
    Class1 \== Class2.

satisfies(Student, Area, Class) :-
    taken(Student, Class, Grade), 
    course(Class, Area, MinGrade),
    passing(Grade, MinGrade).

passing(X,X).
passing(a,b).
passing(b,c).
passing(c,d).
passing(d,f).
passing(X,Y) :- passing(X,Z), X \== Z, passing(Z,Y), !.

taken(francis, math101, a).
taken(francis, math102, b).
