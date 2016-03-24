class PagesController < ApplicationController
    def dashboard
        @task_lists = TaskList.all
    end
end
