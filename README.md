# HaversineFast

This takes advantadge of C being faster at calculating double floating point values then say ruby. A project nescesitated the haversine calculation frequently which would be sub optimal in ruby, there were gems that I found that did this which were either old,(2+ years) or they ran on ruby which defeated the purpose or did a lot more then just calculate the minimum distance between two points on an ellipsoid. Either way this was a nice exercise to remove external dependencies and optimize a continuous calculation.


per wikipedia:
haversin(d/r) = haversin



## Installation

Add this line to your application's Gemfile:

    gem 'haversine_fast'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haversine_fast

## Usage



## Contributing

1. Fork it ( https://github.com/[my-github-username]/haversine_fast/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
