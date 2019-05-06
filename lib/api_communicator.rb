require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)
  film_list = ""
  response_string = RestClient.get('http://www.swapi.co/api/people')
  response_hash = JSON.parse(response_string)
  response_hash["results"].each do |nest|
    if nest['name'].downcase == character_name.downcase
      film_list = nest['films']
       end
      end
      film_list
    end


def print_movies(input)
  # some iteration magic and puts out the movies in a nice list
  puts "Your character was in the following movies:"
  input.each do |title|
  puts "#{title}"

  end
end

def show_character_movies(character_name)
  #empty array
  titles = []
  #calling the method
  films = get_character_movies_from_api(character_name)
  #iterating over films
  films.each do |film|
    response = RestClient.get("#{film}")
    first_film = JSON.parse(response)
  
    titles << first_film['title']

      end
  titles
  print_movies(titles)
end


# if character == response_hash["results"][]
# end

# iterate over the response hash to find the collection of `films` for the given
#   `character`
# collect those film API urls, make a web request to each URL to get the info
#  for that film
# return value of this method should be collection of info about each film.
#  i.e. an array of hashes in which each hash reps a given film
# this collection will be the argument given to `print_movies`
#  and that method will do some nice presentation stuff like puts out a list
#  of movies by title. Have a play around with the puts with other info about a given film.




## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
