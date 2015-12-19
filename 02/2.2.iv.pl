% simplified Starcraft dependencies
% reference: http://us.battle.net/sc2/en/game/unit/
% ?- unit(X, battle_cruiser).

building(command_center(scv), command_center).
building(barrack(B), barrack) :- building(B, command_center).
building(factory(B), factory) :- building(B, barrack).
building(starport(F), starport) :- building(F, factory).
building(fusion_core(S), fusion_core) :- building(S, starport).

addon(techlab(B), techlab) :- building(B, barrack).
addon(techlab(B), techlab) :- building(B, factory).
addon(techlab(B), techlab) :- building(B, starport).

unit(battle_cruiser(S,T,F), battle_cruiser) :- 
    building(S, starport),
    addon(T, techlab),
    building(F, fusion_core).

