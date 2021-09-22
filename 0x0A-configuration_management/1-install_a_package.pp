# Installs puppet-lint v2.5.2.

package { 'puppet-lint':
  ensure   => '2.5.2',
  provider => 'gem'
}
