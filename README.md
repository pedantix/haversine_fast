# HaversineFast

This takes advantage of C being faster at calculating double floating point values then say ruby. A project necessitated the haversine calculation frequently which would be sub optimal in ruby. There were gems that I found that did this which were either old (2+ years,) or they ran on ruby which defeated the purpose, or did a lot more then just calculate the minimum distance between two points on an ellipsoid. Either way this was a nice exercise to remove external dependencies and optimize a continuous calculation.


Per [wikipedia:](http://en.wikipedia.org/wiki/Haversine_formula)


<a href="http://www.codecogs.com/eqnedit.php?latex=haversine\left&space;(&space;\frac{d}{r}&space;\right&space;)&space;=&space;haversin\left&space;(&space;\phi&space;_{2}&space;-&space;\phi&space;_{1}&space;\right&space;)&space;&plus;&space;cos\left&space;(&space;\phi&space;_{1}&space;\right&space;)cos\left&space;(&space;\phi&space;_{2}&space;\right&space;)haversin\left&space;(&space;\lambda&space;_{2}&space;-&space;\lambda&space;_{1}&space;\right&space;)" target="_blank"><img src="http://latex.codecogs.com/gif.latex?haversine\left&space;(&space;\frac{d}{r}&space;\right&space;)&space;=&space;haversin\left&space;(&space;\phi&space;_{2}&space;-&space;\phi&space;_{1}&space;\right&space;)&space;&plus;&space;cos\left&space;(&space;\phi&space;_{1}&space;\right&space;)cos\left&space;(&space;\phi&space;_{2}&space;\right&space;)haversin\left&space;(&space;\lambda&space;_{2}&space;-&space;\lambda&space;_{1}&space;\right&space;)" title="haversine\left ( \frac{d}{r} \right ) = haversin\left ( \phi _{2} - \phi _{1} \right ) + cos\left ( \phi _{1} \right )cos\left ( \phi _{2} \right )haversin\left ( \lambda _{2} - \lambda _{1} \right )" /></a>


## Installation

Add this line to your application's Gemfile:

    gem 'haversine_fast'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haversine_fast

## Usage
For a given starting location of lat-1, lng-1 and an ending location of lat-2, lng-2, use:

```
HaversineFast.calc_distance(30.1959496, -81.5497181, 30.279191, -81.3895320)
```

Examples via the rails console:

```
rails console
[2] pry(main)> HaversineFast.calc_distance(30.1959496, -81.5497181, 30.279191, -81.3895320)
=> 17.8579022904856
[3] pry(main)>
```

<em>Note: The above result is in kilometers.  To perform a calculation for miles, you can use the following:</em>

```
[3] pry(main)> ( 0.62137 * HaversineFast.calc_distance(30.1959496, -81.5497181, 30.279191, -81.3895320) ).floor
=> 11
[4] pry(main)>
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/haversine_fast/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
