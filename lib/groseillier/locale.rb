module Groseillier
  module Locale
    class << self

      # Convert locale (ex: :en) to human name (ex: English)
      def human_name(locale)
        if locale.blank?
          I18n.t('locale.default', locale: default_locale, locale_name: I18n.t('locale.name', locale: default_locale))
        else
          I18n.t('locale.name', locale: locale)
        end
      end

      # Return really supported locales
      def available
        [:fr, :en].freeze
      end

      # Return array suitable for use with options_for_select
      def collection_select(default = false)
        locales = available.dup
        locales.map! { |locale| [ human_name(locale), locale ] }
        locales.sort! { |a, b| a.first <=> b.first }
        locales.insert(0, [human_name(''), '']) if default
        locales
      end

      private

      def default_locale
        I18n.default_locale
      end
    end
  end
end
