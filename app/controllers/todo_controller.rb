class TodoController < ApplicaitonController
    
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
        
    end

end