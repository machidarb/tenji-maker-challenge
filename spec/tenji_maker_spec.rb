# frozen_string_literal: true

RSpec.describe TenjiMaker do
  describe '#to_tenji' do
    subject do
      TenjiMaker.new.to_tenji(arg1)
    end

    context '文字列が渡された場合' do
      context 'A HI RU が渡された場合' do
        let!(:arg1) { 'A HI RU' }

        it do
          expect(subject).to eq <<~TENJI.chomp
            o- o- oo
            -- o- -o
            -- oo --
          TENJI
        end

        it { is_expected.to eq <<~TENJI.chomp }
            o- o- oo
            -- o- -o
            -- oo --
          TENJI
      end

      context 'KI RI N が渡された場合' do
        let!(:arg1) { 'KI RI N' }

        it '' do
          expect(subject).to eq <<~TENJI.chomp
            o- o- --
            o- oo -o
            -o -- oo
          TENJI
        end
      end

      context 'SI MA U MA が渡された場合' do
        it ''
      end
    end

    context '数値が渡された場合' do
      it ''
    end

    context 'nil が渡された場合' do
      it ''
    end

    context '引数が渡されなかった場合' do
      it ''
    end
  end
end
