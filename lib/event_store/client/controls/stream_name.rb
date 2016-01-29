module EventStore
  module Client
    module Controls
      module StreamName
        def self.reference
          'someStream'
        end

        def self.get(category=nil, id=nil, random: nil)
          category ||= 'test'
          id ||= Identifier::UUID.random
          random = true if random.nil?

          if random
            category = "#{category}#{Identifier::UUID.random.gsub('-', '')}"
          end

          "#{category}-#{id}"
        end
      end
    end
  end
end
