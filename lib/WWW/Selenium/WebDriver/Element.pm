package WWW::Selenium::WebDriver::Navigator;

use Moose;
use MooseX::Aliases;
use namespace::autoclean;

has 'spore' => (
    is       => 'ro',
    isa      => 'Net::HTTP::Spore',
    required => 1
);

has 'enabled' => (
    is => 'ro',
    isa => 'Bool',
    lazy_build => 1
);

has 'selected' => (
    is => 'ro',
    isa => 'Bool',
    lazy_build => 1
);

has 'displayed' => (
    is => 'ro',
    isa => 'Bool',
    lazy_build => 1
);


sub hash { ... }
sub click { ... }
sub tag_name { ... }
sub value { ... }
sub attribute { ... }
sub text { ... }
sub send_keys { ... }
sub clear { ... }
sub select { ... }
sub submit { ... }
sub toggle { ... }
sub style { ... }
sub location { ... }
sub location_once_scrolled_into_view { ... }
sub size { ... }
sub drag_and_drop_by { ... }
sub drag_and_drop_on { ... }
sub ref { ... }
sub to_json { ... }
sub as_json { ... }



__PACKAGE__->meta->make_immutable;
