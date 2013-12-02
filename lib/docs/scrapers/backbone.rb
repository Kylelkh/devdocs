module Docs
  class Backbone < UrlScraper
    self.name = 'Backbone.js'
    self.slug = 'backbone'
    self.type = 'underscore'
    self.version = '1.1.0'
    self.base_url = 'http://backbonejs.org'

    html_filters.push 'backbone/clean_html', 'backbone/entries', 'title'

    options[:title] = 'Backbone.js'
    options[:container] = '.container'
    options[:skip_links] = ->(filter) { true }

    options[:attribution] = <<-HTML
      &copy; 2010&ndash;2013 Jeremy Ashkenas, DocumentCloud<br>
      Licensed under the MIT License.
    HTML
  end
end
