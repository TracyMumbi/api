require "test_helper"

class CandidatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get candidates_url, as: :json
    assert_response :success
  end

  test "should create candidate" do
    assert_difference("Candidate.count") do
      post candidates_url, params: { candidate: { department: @candidate.department, reg_no: @candidate.reg_no, student_email: @candidate.student_email, student_name: @candidate.student_name, voting_phone_number: @candidate.voting_phone_number } }, as: :json
    end

    assert_response :created
  end

  test "should show candidate" do
    get candidate_url(@candidate), as: :json
    assert_response :success
  end

  test "should update candidate" do
    patch candidate_url(@candidate), params: { candidate: { department: @candidate.department, reg_no: @candidate.reg_no, student_email: @candidate.student_email, student_name: @candidate.student_name, voting_phone_number: @candidate.voting_phone_number } }, as: :json
    assert_response :success
  end

  test "should destroy candidate" do
    assert_difference("Candidate.count", -1) do
      delete candidate_url(@candidate), as: :json
    end

    assert_response :no_content
  end
end
