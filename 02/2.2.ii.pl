course(complexity, time(monday,9,11), lecturer(david,harel), location(feinber,a)).

schedule_conflict(Time,Place,Course1,Course2) :-
    course(Course1, Time, _, Place),
    course(Course2, Time, _, Place),
    Course1 \== Course2.

    
