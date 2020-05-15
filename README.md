# Rad-Style

This gem is meant to simplify the task of managing multiple rubocop.yml files throughout a project suite. It may be included in each project's .rubocop.yml file, as is described below, and that will ensure all the repos have the same set of cops, so your code looks ___raaad___.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'rad-style'
end
```

Or, for a Ruby library, add this to your gemspec:

    spec.add_development_dependency 'rad-style'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rad-style

## Usage

Create a .rubocop.yml with the following directives:

```yml
inherit_gem:
  rad-style:
    - rubocop_defaults.yml
```

## Rubocop Docs
Here's [the manual](https://docs.rubocop.org/en/latest/) that Rubocop put together.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgment

Most of this setup was created thanks to Mike Fotinakis' really [helpful tutorial](https://blog.percy.io/share-rubocop-rules-across-all-of-your-repos-f3281fbd71f8) on the subject.

## Development
To update the gem on rubygems, do the following:
```
gem build rad-style.gemspec
gem push rad-style-1.0.4.gem
```
