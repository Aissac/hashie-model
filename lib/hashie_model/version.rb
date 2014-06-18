module HashieModel
  module Version
    MAJOR = 1
    MINOR = 4
    PATCH = 0
    BUILD = 1
    
    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
  end
end
