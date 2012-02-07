module Groseillier
  module GroseillierHelper
    def page_header(title)
      content_for :page_header do
        content_tag :h1, title
      end
    end
  end
end
