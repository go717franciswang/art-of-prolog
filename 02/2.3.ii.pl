left_of(bike, camera).
left_of(pen, hourglass).
left_of(hourglass, butterfly).
left_of(butterfly, fish).
left_of(A,B) :- left_of(A,C), left_of(C,B).

above(bike, pen).
above(camera, butterfly).
above(A,B) :- above(A,C), above(C,B).

right_of(A,B) :- left_of(B,A).
below(A,B) :- above(B,A).

higher(A,B) :- above(A,B).
higher(A,B) :- above(A,C), left_of(C,B).
higher(A,B) :- above(A,C), right_of(C,B).
