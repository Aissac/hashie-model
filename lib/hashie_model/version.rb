module HashieModel
  module Version
    MAJOR = 1
    MINOR = 0
    PATCH = 0
    BUILD = 'alpha'
    
    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
  end
end
