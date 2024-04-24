# frozen_string_literal: true

DiscourseHomePages::Engine.routes.draw do
  get 'page/:page_id' => 'page#index'
end

Discourse::Application.routes.append do
  pp "mounting DiscourseHomePages::Engine at discourse-home-pages"
  mount ::DiscourseHomePages::Engine, at: 'discourse-home-pages'
end
