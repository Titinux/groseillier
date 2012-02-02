SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |admin|
    admin.item :dashboard, 'Dashboard', root_path
  end
end
