# frozen_string_literal: true

module RecepiesDz
  module Actions
    module Categories
      class Create < RecepiesDz::Action
        include Deps['repos.category_repo']

        params do
          required(:name).filled(:string)
          required(:is_active).filled(:bool)
        end

        def handle(request, response)
          if request.params.valid?
            category_repo.create(
              name: request.params[:name],
              is_active: request.params[:is_active],
            )
            response.redirect '/'
          else
            response.status = 422
          end
        end
      end
    end
  end
end
