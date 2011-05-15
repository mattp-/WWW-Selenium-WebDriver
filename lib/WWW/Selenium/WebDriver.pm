package WWW::Selenium::WebDriver;

use Moose;
use Moose::Util::TypeConstraints;
use namespace::autoclean;
use Net::HTTP::Spore;

use WWW::Selenium::WebDriver::Navigator;

with 'MooseX::Traits';

has 'client' => (
    is         => 'ro',
    isa        => 'Net::HTTP::Spore',
    lazy_build => 1,
);

sub _build_client {
    return Net::HTTP::Spore->new_from_spec('spore_webdriver.json')
                           ->enable('Format::JSON');
}

has 'navigate' => (
    is => 'ro',
    isa => 'WWW::Selenium::WebDriver::Navigator',
    lazy_build => 1
);

sub _build_navigate {
    return WWW::Selenium::WebDriver::Navigator->new('client' => $self->client);
}

has 'role' => (
    is       => 'rw',
    isa      => enum [qw/Remote Firefox IE Chrome/],    # we'll worry about android/iphone another day
    required => 1
);

sub BUILD {
  my $self = shift;

}


sub for {
    my $role = shift;

    return WWW::Selenium::WebDriver->with_traits($role)->new('role' => $role, @_);
}


__PACKAGE__->meta->make_immutable;
