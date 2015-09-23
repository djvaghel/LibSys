require 'test_helper'

class BookTransactionsControllerTest < ActionController::TestCase
  setup do
    @book_transaction = book_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_transaction" do
    assert_difference('BookTransaction.count') do
      post :create, book_transaction: { isbn: @book_transaction.isbn, member: @book_transaction.member, name: @book_transaction.name }
    end

    assert_redirected_to book_transaction_path(assigns(:book_transaction))
  end

  test "should show book_transaction" do
    get :show, id: @book_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_transaction
    assert_response :success
  end

  test "should update book_transaction" do
    patch :update, id: @book_transaction, book_transaction: { isbn: @book_transaction.isbn, member: @book_transaction.member, name: @book_transaction.name }
    assert_redirected_to book_transaction_path(assigns(:book_transaction))
  end

  test "should destroy book_transaction" do
    assert_difference('BookTransaction.count', -1) do
      delete :destroy, id: @book_transaction
    end

    assert_redirected_to book_transactions_path
  end
end
