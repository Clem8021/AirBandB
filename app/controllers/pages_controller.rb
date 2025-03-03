class PagesController < ApplicationController
  def home
    @experiences = Experience.all  # Assure-toi que cette ligne récupère les expériences de ta base de données
  end
end
