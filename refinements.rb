module Compaction
  refine Hash
    def compact
      self.select { |_, value| !value.nil? }
    end
  end
end

class Dummy
end
