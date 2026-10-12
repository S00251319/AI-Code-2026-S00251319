% Load the predicate used to shuffle a list %
:- use_module(library(random), [random_permutation/2]).

% The four suits in a deck %
suit(hearts).
suit(diamonds).
suit(clubs).
suit(spades).

% The thirteen ranks in a deck %
rank(ace).
rank(2).
rank(3).
rank(4).
rank(5).
rank(6).
rank(7).
rank(8).
rank(9).
rank(10).
rank(jack).
rank(queen).
rank(king).

% A card is made from one rank and one suit %
card(Rank, Suit) :- rank(Rank), suit(Suit).

% Gather every possible card into a list %
deck(Deck) :-
    findall(card(Rank, Suit), card(Rank, Suit), Deck).

% Randomly rearrange the cards in a deck %
shuffle_deck(Deck, ShuffledDeck) :-
    random_permutation(Deck, ShuffledDeck).

% Empty hand %
deal_cards(0, Deck, [], Deck).
% Add each card to the hand %
deal_cards(N, [H|T], [H|Hand], RemainingDeck) :-
    N > 0,
    N1 is N - 1,
    deal_cards(N1, T, Hand, RemainingDeck).