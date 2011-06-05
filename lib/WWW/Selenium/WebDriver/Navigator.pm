package WWW::Selenium::WebDriver::Navigator;

use Moose;
use namespace::autoclean;

has 'client' => (
    is       => 'ro',
    isa      => 'Net::HTTP::Spore',
    required => 1,
    handle   => {
        'to'      => 'set_url',
        'back'    => 'back',
        'forward' => 'forward',
        'refresh' => 'refresh'
    }
);

__PACKAGE__->meta->make_immutable;
