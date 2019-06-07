module F1SalesCustom
  module Email
    class Source
      def self.all
        [{}]
      end

      def self.support?(email_id)
        self.all.select{ |source| source[:email_id] == email_id }.count >= 1
      end
    end
  end
end
