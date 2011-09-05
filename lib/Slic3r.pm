package Slic3r;

use strict;
use warnings;

our $debug = 0;
sub debugf {
    printf @_ if $debug;
}

use Slic3r::ExtrusionPath;
use Slic3r::Fill;
use Slic3r::Layer;
use Slic3r::Line;
use Slic3r::Perimeter;
use Slic3r::Point;
use Slic3r::Polyline;
use Slic3r::Polyline::Closed;
use Slic3r::Print;
use Slic3r::STL;
use Slic3r::Surface;


our $layer_height       = 0.4;
our $resolution         = 0.1;
our $perimeter_offsets  = 3;
our $fill_density       = 0.4;  # 1 = 100%
our $filament_diameter  = 3;    # mm
our $filament_packing_density = 0.85;
our $flow_width         = 0.50;
our $temperature        = 195;

our $print_feed_rate    = 60;   # mm/sec
our $travel_feed_rate   = 80;   # mm/sec
our $bottom_layer_speed_ratio = 0.6;

our $retract_length         = 2;    # mm
our $retract_restart_extra  = 0;    # mm
our $retract_speed          = 40;   # mm/sec

our $skirts             = 3;
our $skirt_distance     = 6;    # mm

our $use_relative_e_distances = 0;

our $print_center       = [100,100];  # object will be centered around this point

1;
