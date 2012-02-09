SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |admin|
    admin.dom_class = 'right'

    if administrator_signed_in?
      admin.item :logout, t('devise.links.sign_out'), destroy_administrator_session_path, method: :delete
    else
      admin.item :login, t('devise.links.sign_in'), new_administrator_session_path
    end
  end
end
