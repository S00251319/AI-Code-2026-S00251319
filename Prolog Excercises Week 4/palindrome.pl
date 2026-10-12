% ----------------------------------------
% Check whether a list reads the same
% forwards and backwards
% ----------------------------------------

% Define palindrome list %
palindrome([]).
% Definition for list with 1 element (always a palindrome) %
palindrome([_]).

% Palindrome check %
palindrome(List) :-
    % Split the list into first, middle, and last elements %
    append([First], Rest, List),
    append(Middle, [Last], Rest),
    % Check if first and last elements are the same %
    First = Last,
    % Repeat for the middle of the list %
    palindrome(Middle).