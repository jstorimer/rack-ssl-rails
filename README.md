Rack::SSL::Rails
=========

A simple interface to Rack::SSL for Rails. Makes use of Railtie.

See http://github.com/josh/rack-ssl

Usage
-----

Simply add `config.force_ssl = true` to your application configuration to enable Rack::SSL

Reason
------

This is a response to the fact that Rack::SSL (and the above config option) are included in core in Rails 3.1. Using SSL in your app is a good idea and Rails should support best practices. But now that Rails depends on this gem my app will depend on it, and load the code, even if the code goes unused. 

There are use cases for not using rack-ssl, with an app that began before Rails 3.1 we already have a solution for forcing SSL in certain areas of the codebase, I see no reason to switch. Any app that lets users use their own domains will also not be able to use this, at least not without some prior thought.

IMO this is what the Railties API is for. 'Have it your way'. The Railties API can provide the exact same interface and ease of use, but outside of core rails. This gem could be added to the default Gemfile going forward. That way Rails continues to support best practices without increasing my app's deps unnecessarily.

https://github.com/rails/rails/commit/2c0c4d754e34b13379dfc53121a970c25fab5dae#commitcomment-383401
