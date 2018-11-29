
clownfish(nemo).
clownfish(marlin).
blue_tang(dory).
fish(X) :-
	clownfish(X).
fish(F) :-
	blue_tang(F).
fish(S):-
	shark(S).
shark(bruce).
shark(chum).

smells_blood(bruce).
human(darla).
turtle(crush).
scares(darla, nemo).
scares(bruce, marlin).
scares(chum, marlin).
scares(dory, marlin).
scares(nemo, marlin).

helps_nemo(nemo).
helps_nemo(Helper):-
	friends(Helper,NewHelper),
	helps_nemo(NewHelper).

friends(marlin, nemo).
friends(crush, marlin).
friends(dory, marlin).
friends(bruce, dory).
friends(chum, bruce).

fish_are_not_friends(Shark):-
	shark(Shark).
	smells_blood(Shark).

far_out(Creature1, Creature2):-
	turtle(Creature1),
	friends(Creature1, Creature2).

will_fight_for(Defender, Defendee, Scarer):-
	friends(Defender, Defendee),
	scares(Scarer, Defendee).
