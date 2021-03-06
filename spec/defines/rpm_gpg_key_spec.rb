require 'spec_helper'

describe 'epel::rpm_gpg_key' do
  context 'operatingsystemmajrelease => 8' do
    let :facts do
      default_facts.merge(
        operatingsystemrelease:    '8.0.1905',
        operatingsystemmajrelease: '8',
      )
    end

    let :title do
      'EPEL-8'
    end

    let :params do
      {
        path: '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8',
      }
    end

    it do
      is_expected.to contain_exec("import-#{title}").with(
        path:      '/bin:/usr/bin:/sbin:/usr/sbin',
        command:   "rpm --import #{params[:path]}",
        unless:    "rpm -q gpg-pubkey-$(echo $(gpg -q --throw-keyids --keyid-format short < #{params[:path]}) | grep pub | cut -f2 -d/ | cut -f1 -d' ' | tr '[A-Z]' '[a-z]')",
        require:   "File[#{params[:path]}]",
        logoutput: 'on_failure',
      )
    end
  end

  context 'operatingsystemmajrelease => 7' do
    let :facts do
      default_facts.merge(
        operatingsystemrelease:    '7.0.1406',
        operatingsystemmajrelease: '7',
      )
    end

    let :title do
      'EPEL-7'
    end

    let :params do
      {
        path: '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
      }
    end

    it do
      is_expected.to contain_exec("import-#{title}").with(
        path:      '/bin:/usr/bin:/sbin:/usr/sbin',
        command:   "rpm --import #{params[:path]}",
        unless:    "rpm -q gpg-pubkey-$(echo $(gpg -q --throw-keyids --keyid-format short < #{params[:path]}) | grep pub | cut -f2 -d/ | cut -f1 -d' ' | tr '[A-Z]' '[a-z]')",
        require:   "File[#{params[:path]}]",
        logoutput: 'on_failure',
      )
    end
  end

  context 'operatingsystemmajrelease => 6' do
    let :facts do
      default_facts.merge(
        operatingsystemrelease:    '6.4',
        operatingsystemmajrelease: '6',
      )
    end

    let :title do
      'EPEL-6'
    end

    let :params do
      {
        path: '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      }
    end

    it do
      is_expected.to contain_exec("import-#{title}").with(
        path:      '/bin:/usr/bin:/sbin:/usr/sbin',
        command:   "rpm --import #{params[:path]}",
        unless:    "rpm -q gpg-pubkey-$(echo $(gpg -q --throw-keyids --keyid-format short < #{params[:path]}) | grep pub | cut -f2 -d/ | cut -f1 -d' ' | tr '[A-Z]' '[a-z]')",
        require:   "File[#{params[:path]}]",
        logoutput: 'on_failure',
      )
    end
  end

  context 'operatingsystemmajrelease => 5' do
    let :facts do
      default_facts.merge(
        operatingsystemrelease:    '5.9',
        operatingsystemmajrelease: '5',
      )
    end

    let :title do
      'EPEL-5'
    end

    let :params do
      {
        path: '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-5',
      }
    end

    it do
      is_expected.to contain_exec("import-#{title}").with(
        path:      '/bin:/usr/bin:/sbin:/usr/sbin',
        command:   "rpm --import #{params[:path]}",
        unless:    "rpm -q gpg-pubkey-$(echo $(gpg -q --throw-keyids --keyid-format short < #{params[:path]}) | grep pub | cut -f2 -d/ | cut -f1 -d' ' | tr '[A-Z]' '[a-z]')",
        require:   "File[#{params[:path]}]",
        logoutput: 'on_failure',
      )
    end
  end
end
