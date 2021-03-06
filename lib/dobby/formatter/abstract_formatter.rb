# frozen_string_literal: true

module Dobby
  module Formatter
    class AbstractFormatter
      attr_reader :output
      attr_reader :options

      def initialize(output, options = {})
        @output = output
        @options = options
      end

      # Called once before starting work.
      def started(target_files); end

      # Called when starting work for a single file.
      def file_started(file); end

      def file_finished(file, results); end

      def finished(files); end
    end
  end
end
