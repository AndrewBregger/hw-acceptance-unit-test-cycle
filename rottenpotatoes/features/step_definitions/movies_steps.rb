Given /^the following movies exist:$/ do |table|
  table.hashes.each do |hash|
    Movie.create hash
  end
end

Then /^the director of "(.+)" should be "(.+)"$/ do |movie_name, director|
  movie = Movie.find_by(title: movie_name)
  expect(movie.director).to eq(director)
end