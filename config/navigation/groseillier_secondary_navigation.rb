SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |admin|
    admin.dom_class = 'right'

    admin.item :logout, 'Logout', root_path
  end
end
