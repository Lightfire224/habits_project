class RecordsController < ApplicationController
    def index
        @records = Record.all 
    end

    def show
        @record = Record.find(params[:id])
    end

    def new
        @record = Record.new
        @activity = Activity.find(params[:activity_id])
    end

    def create
        @record = Record.create(record_params)
        redirect_to activity_record_path(params[:activity_id], @record)
    end

    def edit
        @record = Record.find(params[:id])
    end

    def update
        @record = Record.find(params[:id])
        @record.update(record_params)
        redirect_to record_path(@record)
    end

    def destroy
        @record = Record.find(params[:id])
        @record.destroy
        redirect_to records_path
    end

    private

    def record_params
        # params.permit(:activity_id).require(:record).permit(:title, :reflection)
        params_hash = params.require(:record).permit(:title, :reflection)
        #<ActionController::Parameters {"title"=>"dafas", "reflection"=>"dfdsafdsa"} permitted: true>
        params_hash[:activity_id] = params[:activity_id]
        # => <ActionController::Parameters {"title"=>"Titleeee", "reflection"=>"REFLEX", "activity_id"=>"3"} permitted: true>
        #params_hash a hash... ^^ adds the key of activity_id and its value to our hash.
        params_hash
    end
end