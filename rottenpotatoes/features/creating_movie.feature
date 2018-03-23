Feature: search for movies by director
 
  As a movie buff
  So that I can add a new movie
  I want to create a new movie to be included on the website
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: creating new movie
  When I am on the RottenPotatoes home page
  And I follow "Add new movie"
  And I fill in "Title" with "The Avengers"
  And I select "PG-13" from "Rating"
  And I select "2013" from "movie_release_date_1i"
  And I select "May" from "movie_release_date_2i"
  And I select "4" from "movie_release_date_3i"
  And I press "Save Changes"
  Then I should see "The Avengers was successfully created."
  And I should see "PG-13"
  And I should see "2013-05-04"