SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |admin|
    admin.item :dashboard, 'Dashboard', root_path

    admin.item :administrators,
               Groseillier::Administrator.model_name.human.pluralize,
               administrators_path
  end
end
