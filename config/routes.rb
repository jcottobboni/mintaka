Mintaka.parent_engine.routes.draw do
  if Mintaka.home_page
    get "/#{Mintaka.home_page}", to: redirect('/')
    root to: 'mintaka/pages#show', id: Mintaka.home_page
  end

  if Mintaka.routes
    get Mintaka.route_drawer.match_attributes
  end
end