# frozen_string_literal: true

module RecepiesDz
  module Views
    module Categories
      class Show < RecepiesDz::View
        include Deps["repos.category_repo"]
        expose :recipes
        expose :categories do
          category_repo.all
        end
      end
    end
  end
end
