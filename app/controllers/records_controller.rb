class RecordsController < ApplicationController
    def index
        @records = Record.all 
    end

    def show
        @record = Record.find(params[:id])
    end

    def new
        @record = Record.new
    end

    def create
        @record = Record.create(record_params)
        redirect_to record_path(@record)
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
        params.require(:record).permit(:name, :description, :habit_id)
    end
end
