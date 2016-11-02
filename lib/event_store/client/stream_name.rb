module EventStore
  module Client
    module StreamName
      extend self

      def stream_name(category_name, id=nil, random: nil)
        id ||= Identifier::UUID.random
        random ||= false

        if random
          category_name = EventStore::Client::StreamName.random_category_name(category_name)
        end

        "#{category_name}-#{id}"
      end

      def category_stream_name(category_name)
        "$ce-#{category_name}"
      end

      def self.random_category_name(category_name)
        random_id = Identifier::UUID.random.gsub('-', '')
        "#{category_name}#{random_id}"
      end

      def self.get_id(stream_name)
        _, stream_id = split stream_name
        stream_id
      end

      def self.get_category(stream_name)
        category, _ = split stream_name
        category
      end

      def self.split(stream_name)
        if stream_name.start_with? '$ce-'
          _, category = stream_name.split '-', 2
        else
          category, stream_id = stream_name.split '-', 2
        end

        return category, stream_id
      end
    end
  end
end
