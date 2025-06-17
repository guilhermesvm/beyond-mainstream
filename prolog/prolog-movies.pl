% prolog-movies.pl

/* DATABASE
    movie(M, Y) <- movie M came out in year Y
    director(M, D) <- movie M was directed by director D
    actor(M, A, R) <- actor A played role R in movie M
    actress(M, A, R) <- actress A played role R in movie M
*/

% Part 1: Write queries to answer the following questions. 
% a. In which year was the movie American Beauty (american_beauty) released?
movie(american_beauty, Y).

% b. Find the movies released in the year 2000.
movie(M, 2000).

% c. Find the movies released before 2000.
movie(M, _Y), _Y < 2000.

% d. Find an actor who has appeared in more than one movie.
actor(M1, A, _), actor(M2, A, _), M1 @> M2.

% e. Find a director of a movie in which Scarlett Johansson (scarlett_johansson) appeared.
director(M, D), actress(M, scarlett_johansson, _).

% f. Find an actor who has also directed a movie.
actor(M, A, _), director(M, A).

% g. Find an actor or actress who has also directed a movie.
(actor(M, A, _); actress(M, A, _)), director(M1, A).

% h. Find the movies in which John Goodman (john_goodman) and Jeff Bridges (jeff_bridges) were co-stars.
actor(M, john_goodman, _), actor(M, jeff_bridges, _).


% Part 2: Add rules to the database to do the following:
% a. released_after(M, Y) <- the movie was released after the given year.
released_after(M, Y) :- movie(M, Year), Year > Y. 

% b. same_year(M1, M2) <- the movies are released in the same year.
same_year(M1, M2) :- movie(M1, Y), movie(M2, Y), M1 \= M2.

% c. co_star(A1, A2) <- the actor/actress are in the same movie.
co_star(A1, A2) :- 
    actor(M, A1, _),
    (actor(M, A2, _); actress(M, A2, _)), A1 \= A2.

co_star(A1, A2) :- 
    actress(M, A1, _),
    (actor(M, A2, _); actress(M, A2, _)), A1 \= A2.