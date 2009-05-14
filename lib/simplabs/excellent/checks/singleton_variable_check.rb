require 'simplabs/excellent/checks/base'

module Simplabs

  module Excellent

    module Checks

      class SingletonVariableCheck < Base

        def interesting_nodes
          [:cvar]
        end

        def evaluate(context)
          add_error('Singleton variable {{variable}} used.', { :variable => context.full_name }, -1)
        end

      end

    end

  end

end