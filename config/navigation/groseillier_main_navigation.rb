SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |admin|
    admin.item :dashboard, 'Dashboard', groseillier.root_path

    admin.item :administrators,
               Groseillier::Administrator.model_name.human.pluralize,
               groseillier.administrators_path

    Groseillier::Addons.registered.each do |addon|
      router = send(addon.name.to_sym)
      url = router.send(:root_path)
      admin.item addon.name, addon.menu, url
    end

    admin.item :addons,
               t('groseillier/addon.name').pluralize,
               groseillier.addons_path
  end
end
