module Mintaka
  module RouteDrawers
    # Matches routes in the Mintaka.content_path directory. By default this looks
    # for /pages/id. e.g. http://www.example.com/pages/about_us
    class Default
      def self.match_attributes
        {
          "/#{Mintaka.content_path}*id" => 'mintaka/pages#show',
          :as => :page,
          :format => false
        }
      end
    end
  end
end