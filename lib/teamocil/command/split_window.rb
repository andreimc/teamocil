module Teamocil
  module Command
    class SplitWindow < ClosedStruct.new(:root, :orientation)
      def to_s
        "split-window #{options.join(' ')} #{orientation}"
      end

      def options
        [].tap do |options|
          options << "-c '#{root}'" if root
        end
      end
    end
  end
end
