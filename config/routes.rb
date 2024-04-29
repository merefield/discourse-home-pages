# frozen_string_literal: true

DiscourseHomePages::Engine.routes.draw do
  get 'landing-page/:page_id' => 'page#index'
  get 'home-page/:page_id' => 'page#index'
end

Discourse::Application.routes.append do
  mount ::DiscourseHomePages::Engine, at: 'discourse-home-pages'
end
