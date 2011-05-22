package WWW::Selenium::WebDriver::Navigator;

use Moose;
use namespace::autoclean;

has 'spore' => (
    is       => 'ro',
    isa      => 'Net::HTTP::Spore',
    required => 1
);

sub to { ... }
sub back { ... }
sub forward { ... }
sub refresh { ... }

__PACKAGE__->meta->make_immutable;
