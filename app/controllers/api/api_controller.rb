module Api
  class ApiController < ApplicationController

    private

    def render_created
      render(:show, status: :created)
    end


    def render_updated
      render(:show, status: :ok)
    end


    def render_destroyed
      render(:show, status: :ok)
    end


    def render_errors(object)
      render('api/shared/errors',
        locals: {errors: object.errors},
        status: :unprocessable_entity)
    end

  end
end
