class User < ApplicationRecord
    has_many :projects
    has_many :goals
    has_one :planner
    has many :goal_tasks, through :goals, class_name: "Task"
    has_many :project_tasks, through :projects, class_name :"Task"
    has_many :planner_tasks, through :planner, class_name: "Task"
    has_many :notes, through :planner
end
