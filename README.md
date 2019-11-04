## Practice Challenge - _Lights, Camera, Action!_


The domain we're going to build out is actors, movies, and roles. Actors can be in many movies and movies can have many actors. 

Build out classes for `actor`, `movie`, and `role`. This is a many-to-many-through relationship.`Role` is the join class between `actor` and `movie`. 
- a `actor` has many `movie`s through `role`. 
- a `movie` has many `actor`s through `role`. 
- A `role` belongs to one `actor`
- a `role` belongs to one `movie`

### Deliverables

#### Actor
1. `Actor` - has the following attributes: `first_name` - string, `last_name` - string, `age` - integer
    * `Actor#first_name`, `Actor#last_name`, and `Actor#age` methods should all return the respective attributes
    * `first_name` and `last_name` cannot be changed once set, but `age` can be updated (since actor's never tell the truth about their age)
2. `Actor.all` - returns an array of all the actor objects that have been created
3. `Actor#full_name` - returns a string of a given actor's first and last names concatenated (e.g., `"Tom Cruise"`)
4. `Actor#movies` - returns an array of movie object that the actor has acted in
5. `Actor#credits` - returns a hash where the keys are the movie title and the values are the name of the role the actor played in the movied - e.g., 
```ruby
> tom_cruise.credits 
> # { 
> #  "Top Gun" => "Maverick", 
> #  "Mission Impossible" => "Ethan Hung",
> #  "The Mummy" => "The guy who kills the mummuy"
> # }
```
6. `Actor.find_by_full_name(full_name)` - accepts `full_name` as a string argument and returns a single instance of `actor` that has that name provided
7. `Actor.no_younger_than(age)` - accepts an integer `age` argument and returns an array of `actor` instances whose age is equal to or greater than the `age` argument passed in

#### Movie

1. `Movie` - has the following attributes: `title` - string, `year` - integer
    * `Movie#title` and `Movie#year` methods should all return the respective attributes
    * `title` and `date` can be changed once set
2. `Movie.all` - returns an array of all the movie objects in the collection
3. `Movie#pretty_print` - returns a string with the `title` and the `date` concatenated with a colone (`:`) character seperating them (e.g., `The Matrix 4: 2021`)
6. `Movie#cast` - returns an array of `actor` objects that have a role in the movie
5. `Movie#credits` - returns a hash where the keys are the character names of the `role`s in the movies and the values are the corresponding `actor` full names - e.g.
```ruby
> batman.credits 
> # { 
> #  "Batman" => "Michael Keaton", 
> #  "Joker" => "Jack Nicholson"
> # }
```
6. `Movie.by_year(year)` - accepts an interger `year` argument and returns an array of movie objects from that year


#### Role
1. `Role` - has the following attributes: `actor` - actor, `movie` - movie, `character_name` - string representing the name of the character
    * `Role#actor`, `Role#movie`, and `Role#character_name` methods should all return the respective attributes
    * all attributes can be updated
2. `Role.all` - returns an array of all the role objects in the collection
3. `Role#movie` - returns the `movie` object the `role` belongs to
4. `Role#actor` - returns the `actor` object that played the role
