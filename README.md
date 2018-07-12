# Rad-Style

This gem is meant to dry out some rubocop.yml files throughout a project suite. It may be included in each project's .rubocop.yml file, as is described below, and that will ensure all the repos have the same set of cops, so you look (absolutely) fresh to death.

## Installation

Add this line to your application's Gemfile:

```
group :test, :development do
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

```
inherit_gem:
  rad-style:
    - rubocop_defaults.yml
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgment

Most of this setup was created thanks to Mike Fotinakis' really helpful tutorial on the subject:

https://blog.percy.io/share-rubocop-rules-across-all-of-your-repos-f3281fbd71f8
