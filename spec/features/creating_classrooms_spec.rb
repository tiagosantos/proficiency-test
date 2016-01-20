require 'rails_helper'

describe Classroom do
    before do
      @classroom = Classroom.new(student_id: 1,
        course_id: 1,
        entry_at: Time.now)
    end

    describe "quando o estudante não foi informado" do
      before { @classroom.student_id = ""}
      it { should_not be_valid }
    end

    describe "quando o curso não foi informado" do
      before { @classroom.course_id = ""}
      it { should_not be_valid }
    end

    describe "quando a data não foi informada" do
      before { @classroom.entry_at = ""}
      it { should_not be_valid }
    end
end

  