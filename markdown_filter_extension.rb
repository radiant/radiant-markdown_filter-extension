require "bluecloth"

class MarkdownFilterExtension < Radiant::Extension
  version "1.0.0"
  description "Allows you to compose page parts or snippets using the Markdown text filter."
  url "http://daringfireball.net/projects/markdown/"

  def activate
    MarkdownFilter
    Page.send :include, MarkdownTags
  end
end
