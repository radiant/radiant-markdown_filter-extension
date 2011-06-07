class MarkdownFilter < TextFilter
  description_file File.dirname(__FILE__) + "/../markdown.html"
  def filter(text)
    BlueCloth.new(text, :smartypants => true).to_html
  end
end