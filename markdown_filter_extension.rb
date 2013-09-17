require "bluecloth"

class MarkdownFilterExtension < Radiant::Extension
  version RadiantMarkdownFilterExtension::VERSION
  description "Allows you to compose page parts or snippets using the Markdown text filter."
  url "http://github.com/radiant/radiant-markdown_filter-extension/"

  def activate
    MarkdownFilter
    Page.send :include, MarkdownTags
  end
end
