require 'test_helper'

class JobCatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_catagory = job_catagories(:one)
  end

  test "should get index" do
    get job_catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_job_catagory_url
    assert_response :success
  end

  test "should create job_catagory" do
    assert_difference('JobCatagory.count') do
      post job_catagories_url, params: { job_catagory: { name: @job_catagory.name } }
    end

    assert_redirected_to job_catagory_url(JobCatagory.last)
  end

  test "should show job_catagory" do
    get job_catagory_url(@job_catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_catagory_url(@job_catagory)
    assert_response :success
  end

  test "should update job_catagory" do
    patch job_catagory_url(@job_catagory), params: { job_catagory: { name: @job_catagory.name } }
    assert_redirected_to job_catagory_url(@job_catagory)
  end

  test "should destroy job_catagory" do
    assert_difference('JobCatagory.count', -1) do
      delete job_catagory_url(@job_catagory)
    end

    assert_redirected_to job_catagories_url
  end
end
