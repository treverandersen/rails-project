# README

* Ruby version
  Ruby 2.6.2

* System dependencies
  Bcrypt and Omniauth 

* Database creation
  rails db:create

* How to run the test suite
  rspec <filename_spec.rb>

* About Project
    This is an app that allows a farmer to keep track of their grain storage. Each bin allows for a name, and bushel capacity to measure how full the bin is based off loads to that bin. Each load calculates the bushels based off if the load is corn or soybeans. Each load also accounts for the shrink based off the moisture. There are scope methods that add up the total wet and dry bushels per field and per bin. And the app will keep track of the drivers, with who took what load where. 
