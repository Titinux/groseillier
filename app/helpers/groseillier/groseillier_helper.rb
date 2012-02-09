module Groseillier
  module GroseillierHelper
    def page_header(title)
      content_for :page_header do
        content_tag :h1, title
      end
    end

    def render_flash_messages
      capture_haml do
        flash.each do |name, msg|
          haml_tag "p.flash.#{name}" do
            haml_concat image_tag("groseillier/icons/interactions/#{name}.png")
            haml_tag :strong do
              haml_concat t("flash.names.#{name}")
            end

            haml_concat " : #{msg}"
          end
        end
      end
    end
  end
end
