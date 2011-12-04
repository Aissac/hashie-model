module HashieModel
  module Version
    MAJOR = 1
    MINOR = 2
    PATCH = 3
    BUILD = nil
    
    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
  end
end
