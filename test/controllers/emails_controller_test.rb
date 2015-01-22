class EmailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert :success
    assert_template :index
  end

  test "admin route with email content DELETE erases database" do
    assert_difference('Email.count', -3) do
      post :admin, email: { text: 'DELETE' }
    end
    assert :success
  end

  test "admin route with a picture sends an email to everyone in the database" do
    flunk
  end

  test "guest route stores the email in the database" do
    flunk
  end
end
