# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Part do

  context '#assemblies' do

    let(:part) { FactoryGirl.create(:part) }

    let!(:assembly1) do
      assembly = FactoryGirl.create(:assembly, parts: [part])
      I18n.with_locale(:es) do
        assembly.name = "Spanish 1"
        assembly.save
      end
      assembly
    end

    let!(:assembly2) do
      assembly = FactoryGirl.create(:assembly, parts: [part])
      I18n.with_locale(:es) do
        assembly.name = "Spanish 0"
        assembly.save
      end
      assembly
    end

    it 'has multiple assemblies' do
      expect(part.assemblies.count).to eq(2)
    end

    it 'returns only returns assembly names for the current locale' do
      expect(part.assemblies.map(&:name).count).to eq(2)
    end

    it 'returns the assemblies in alphabetical order by name' do
      assembly2.name = "1111"
      assembly2.save

      expect(part.assemblies.map(&:name)).to eq(["1111", assembly1.name])
    end

  end

  context 'creating a new record' do

    let(:new_part) { FactoryGirl.create(:part) }
    let(:assembly) { FactoryGirl.create(:assembly) }

    # the expected error from globalize
    it 'does not try to save a locale attribute to the join table' do
      expect { new_part.assemblies = [ assembly ] }.
        not_to raise_error(
          ActiveRecord::UnknownAttributeError,
          /unknown attribute: locale/)
    end

  end

end
