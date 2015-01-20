require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { cover_image: @trip.cover_image, description: @trip.description, duration: @trip.duration, highlights: @trip.highlights, includes: @trip.includes, number_of_people: @trip.number_of_people, price_per_person: @trip.price_per_person, title: @trip.title }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    patch :update, id: @trip, trip: { cover_image: @trip.cover_image, description: @trip.description, duration: @trip.duration, highlights: @trip.highlights, includes: @trip.includes, number_of_people: @trip.number_of_people, price_per_person: @trip.price_per_person, title: @trip.title }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
