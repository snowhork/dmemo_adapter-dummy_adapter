module DmemoAdapter
  module DummyAdapter
    class Adapter < Base
      DmemoAdapter.register 'dummy', self

      def initialize(data_source)
      end

      def fetch_tables
        [Table.new("dummy_schema", "dummy_table")]
      end

      def fetch_rows(table, limit)
        (1..5).map do |i|
          ["col1-#{i}", "col2-#{i}"]
        end
      end

      def fetch_columns(table)
        [Column.new("column1", "STRING", "", false), Column.new("column2", "STRING", "", false)]
      end

      def fetch_count(table)
        5
      end

      def reset!
      end

      def disconnect!
      end
    end
  end
end
