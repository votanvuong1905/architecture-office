module Console
  class ApplicationController < ::ApplicationController
    before_action :authenticate_user!

    private

    def respond(target, action)
      respond_to do |format|
        if yield(target)
          format.html { redirect_to [:console, target], notice: "#{target.class.name} was successfully." }
          format.json { render :show, status: :created, location: target }
        else
          format.html { render action }
          format.json { render json: target.errors, status: :unprocessable_entity }
        end
      end
    end
  end
end
