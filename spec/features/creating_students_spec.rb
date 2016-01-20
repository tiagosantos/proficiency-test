require 'rails_helper'

describe Student do
    before do
      @student = Student.new(name: "Exemplo de curso SPEC",
        status: 1,
        register_number: "SPEC123")
    end

    describe "quando o nome não foi informado" do
      before { @student.name = ""}
      it { should_not be_valid }
    end

    describe "quando a descrição não foi informado" do
      before { @student.register_number = ""}
      it { should_not be_valid }
    end

    describe "quando o status não foi informado" do
      before { @student.status = ""}
      it { should_not be_valid }
    end

    describe "quando o nome é muito curto" do
      before { @student.name = "abc"}
      it { should_not be_valid }
    end

    describe "quando o nome é muito longo" do
      before { @student.name = "a" * 45}
      it { should_not be_valid }
    end
end

  