class PredictionsController < ApplicationController
  def new
  end

  def create
    attrs = [
      params[:sepal_length_cm],
      params[:sepal_width_cm_width],
      params[:petal_length_cm_length],
      params[:petal_width_cm_width]
    ].map(&:to_f)
    @prediction = DecisionTreeClassifier.predict(attrs)
  end
end
