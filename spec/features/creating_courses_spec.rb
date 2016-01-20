require 'rails_helper'

describe Course do
    before do
      @course = Course.new(name: "Exemplo de curso SPEC",
        status: 1,
        description: "Exemplo de curso")
    end

    describe "quando o nome não foi informado" do
      before { @course.name = ""}
      it { should_not be_valid }
    end

    describe "quando a descrição não foi informado" do
      before { @course.description = ""}
      it { should_not be_valid }
    end

    describe "quando o status não foi informado" do
      before { @course.status = ""}
      it { should_not be_valid }
    end

    describe "quando o nome é muito curto" do
      before { @course.name = "na"}
      it { should_not be_valid }
    end

    describe "quando o nome é muito longo" do
      before { @course.name = "n" * 45}
      it { should_not be_valid }
    end
end

  