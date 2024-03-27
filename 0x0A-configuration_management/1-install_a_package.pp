# A puppet manifest installing flask v2.1.0 from pip3 package.
# Using ensure attribute to specify the version of flask to install
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}
