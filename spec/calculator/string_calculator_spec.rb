# frozen_string_literal: true

RSpec.describe Calculator::StringCalculator do
  describe ".add" do
    subject { described_class.add(numbers) }

    context "when the input is an empty string" do
      let(:numbers) { "" }
      it "returns 0" do
        expect(subject).to eq(0)
      end
    end

    context "when the input is a single number" do
      let(:numbers) { "1" }
      it "returns the number" do
        expect(subject).to eq(1)
      end
    end

    context "when the input is two numbers" do
      let(:numbers) { "1,2" }
      it "returns the sum of the numbers" do
        expect(subject).to eq(3)
      end
    end
  end
end
