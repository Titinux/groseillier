Factory.define :administrator, :class => Groseillier::Administrator do |f|
  f.sequence(:nickname)  {|n| "admin#{n}" }
  f.email  {|a| "#{a.nickname}@example.com" }

  f.password "admin_password"
  f.password_confirmation {|a| a.password }
end
