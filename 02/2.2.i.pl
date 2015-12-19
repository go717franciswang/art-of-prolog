course(complexity, time(monday,9,11), lecturer(david,harel), location(feinber,a)).

location(Course,Building) :- course(Course, _Time, _Lecturer, location(Building,_Room)).

busy(Lecturer,Time) :- course(_Course, Time, Lecturer, _Location).

cannot_meet(Lecturer1, Lecturer2) :- busy(Lecturer1,Time), busy(Lecturer2,Time).
    


