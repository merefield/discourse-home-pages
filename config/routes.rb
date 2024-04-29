# frozen_string_literal: true

DiscourseHomePages::Engine.routes.draw do
  get 'landing-page/:page_id' => 'landing_page#index'
  get 'home-page/:page_id' => 'home_page#index'
end

Discourse::Application.routes.append do
  mount ::DiscourseHomePages::Engine, at: 'discourse-home-pages'
end
