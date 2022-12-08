module CustomMatcher
  class OurCustomMatcher
    def initialize(target)
      @target = target
    end

    def matches?(value)
      # value is from main object, target is from this class
      value == @target
    end

    def failure_message
      return '-----------Our matcher failed to match :D------------'
    end
  end

  def self.custom_matcher(target)
    OurCustomMatcher.new(target)
  end
end
