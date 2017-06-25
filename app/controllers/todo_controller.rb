class TodoController < ApplicationController
    
    def index
        @todos = Todo.all
    end
    
    def new
        
    end
    
    def create
        todo = Todo.new
        todo.description = params[:description]
        todo.pomodoro_estimate = params[:pomodoro_estimate]
        todo.save
        redirect_to "/todo/show/#{todo.id}"
    end
    
    def show
       @todo = Todo.find(params[:id]) 
    end
    
    def edit
        @todo = Todo.find(params[:id])
    end
    
    def update
        t = Todo.find_by_id(params['id'])
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro-estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    
    def delete
        todo = Todo.find(params[:id])
        todo.destroy
        redirect_to root_path
    end

end