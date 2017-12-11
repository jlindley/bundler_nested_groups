# Bundler groups can't nest (demo repo)

Steps:

* Look in .bundle/config, see that "outer" group is excluded
* Look in Gemfile: see "thor" is in an "inner" group, inside "outer" group.
* Run `bundle` (which picks up exlusion from .bundle/config), or run `bundle --without outer`.
* See that Thor still gets installed even though it's in an apparently nested group, the outer group containing Rake is excluded from the bundle.
* Run `bundle exec ruby ./init.rb` and see that inner group's Thor can still be required but outer excluded group's Rake can't be.
