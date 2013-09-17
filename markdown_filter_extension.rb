require "bluecloth"
require 'radiant-markdown_filter-extension'

class MarkdownFilterExtension < Radiant::Extension
  version RadiantMarkdownFilterExtension::VERSION
  description RadiantMarkdownFilterExtension::DESCRIPTION
  url RadiantMarkdownFilterExtension::URL

  def activate
    MarkdownFilter
    Page.send :include, MarkdownTags
  end
end
