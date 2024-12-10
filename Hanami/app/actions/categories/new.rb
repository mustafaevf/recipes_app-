# frozen_string_literal: true

module RecepiesDz
  module Actions
    module Categories
      class New < RecepiesDz::Action
        def handle(request, response)
          response.render(view)
        end
      end
    end
  end
end
