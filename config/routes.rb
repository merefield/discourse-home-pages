# frozen_string_literal: true

DiscourseHomePages::Engine.routes.draw do
  get 'sp/:page_id' => 'simple_page#index'
  get 'dp/:page_id' => 'dynamic_page#index'
end

Discourse::Application.routes.append do
  mount ::DiscourseHomePages::Engine, at: 'home-pages'
end
