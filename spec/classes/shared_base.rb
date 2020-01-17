require 'spec_helper'

shared_examples :base do
  it do
    is_expected.to contain_yumrepo('epel').with(
      failovermethod: 'priority',
      proxy:          'absent',
      enabled:        '1',
      gpgcheck:       '1',
    )
  end
end

shared_examples_for :base_8 do
  include_context :base

  it do
    is_expected.to contain_yumrepo('epel').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=epel-8&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8',
      descr:      'Extra Packages for Enterprise Linux 8 - $basearch',
    )
  end
end

shared_examples_for :base_7 do
  include_context :base

  it do
    is_expected.to contain_yumrepo('epel').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
      descr:      'Extra Packages for Enterprise Linux 7 - $basearch',
    )
  end
end

shared_examples_for :base_6 do
  include_context :base

  it do
    is_expected.to contain_yumrepo('epel').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      descr:      'Extra Packages for Enterprise Linux 6 - $basearch',
    )
  end
end

shared_examples_for :base_5 do
  include_context :base

  it do
    is_expected.to contain_yumrepo('epel').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-5',
      descr:      'Extra Packages for Enterprise Linux 5 - $basearch',
    )
  end
end
