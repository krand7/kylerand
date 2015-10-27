require 'test_helper'

class BlogPostsControllerTest < ActionController::TestCase
  setup do
    @blog_post = blog_posts(:one)
    @kyle = users(:kyle)
  end

  test "should get index as viewer" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_posts)
  end

  test "should get new" do
    login(@kyle)
    get :new
    assert_response :success
  end

  test "should create blog_post" do
    login(@kyle)
    assert_difference('BlogPost.count') do
      post :create, blog_post: { content: "Lorem ipsum...", description: "This is a new blog post", slug: 'new-post', title: 'New Post'}
    end

    assert_redirected_to blog_post_path(assigns(:blog_post))
  end

  test "should show blog_post to viewer" do
    get :show, id: @blog_post
    assert_response :success
  end

  test "should get edit" do
    login(@kyle)
    get :edit, id: @blog_post
    assert_response :success
  end

  test "should update blog_post" do
    login(@kyle)
    patch :update, id: @blog_post, blog_post: { title: 'New title' }
    assert_redirected_to blog_post_path(assigns(:blog_post))
  end

  test "should destroy blog_post" do
    login(@kyle)
    assert_difference('BlogPost.count', -1) do
      delete :destroy, id: @blog_post
    end

    assert_redirected_to blog_posts_path
  end
end
