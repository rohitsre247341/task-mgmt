class TasksController < ApplicationController
    def index
        @task = User.find(params[:user_id]).tasks
    end
    def new  
        @task = Task.new
    end
    def create
        s = session[:user_id]
        @tasks = User.find(s).tasks.create(title: params[:task][:title])
    end
end
