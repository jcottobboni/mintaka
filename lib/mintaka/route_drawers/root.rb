module Mintaka
  module RouteDrawers
    # Matches routes from root of the domain e.g. http://www.example.com/about_us
    # Uses Mintaka::Constraints::RootRoute to validate view exists.
    class Root
      def self.match_attributes
        {
          "/*id" => 'mintaka/pages#show',
          :as => :page,
          :format => false,
          :constraints => Mintaka::Constraints::RootRoute
        }
      end
    end
  end
end