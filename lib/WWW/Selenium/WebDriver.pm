use strict;
use warnings;
package WWW::Selenium::WebDriver;

use Moose;
use Net::HTTP::Spore;

has 'client' => (
    is      => 'ro',
    isa     => 'Net::HTTP::Spore',
    lazy    => 1,
    builder => '_build_client',
);

has 'x' => ( isa => 'Int', is => 'rw', lazy => 1 );
has 'y' => ( isa => 'Int', is => 'rw', lazy => 1 );

sub _build_client {
    return Net::HTTP::Spore->new_from_spec('spore_webdriver.json')
                           ->enable('Format::JSON');
}


1;
