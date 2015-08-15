module Travis
  module Build
    class Script
      class Generic < Script
        DEFAULTS = {}

        def cache_slug
          if config[:cache].nil?
            super
          else
            super << '-' << config[:cache].to_s
          end
        end
      end
    end
  end
end
