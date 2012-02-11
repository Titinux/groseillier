module Groseillier
  class Addons < Array
    def self.registered
        @registered_addons ||= new
    end
  end
end
