module Groseillier
  module GroseillierHelper
    def page_header(title)
      content_for :page_header do
        content_tag :h1, title
      end
    end

    def page_content(&block)
      content_for(:page_content, &block)
    end

    def page_footer(&block)
      content_for(:page_footer, &block)
    end

    def actions
      content_for(:action_bar) do
        capture_haml do
          yield
        end
      end
    end

    def stylesheets(&block)
      content_for(:stylesheets, &block)
    end

    def javascripts(&block)
      content_for(:javascripts, &block)
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

    def full_page_class
      classes = controller.class.name.underscore.split('/')
      classes.map! { |c| c.chomp('_controller')}
      classes << controller.action_name
    end
  end
end
