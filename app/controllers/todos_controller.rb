class TodosController < ApplicationController
    def show
    @todo = Todo.find(params[:id])
    end
    def index 
      @todos = Todo.all  
    end
    def new
        @todo = Todo.new
    end
    def create 
        @todo = Todo.new(todo_params)
        if @todo.save
        redirect_to @todo
        else
            render 'new'
        end
    end
    private 
    def todo_params
        params.require(:todo).permit(:title,:completed,:description)
    end
end
