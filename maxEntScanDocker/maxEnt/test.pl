use Mojolicious::Lite;
use Mojo::IOLoop;

require './score3.pl';
require './score5.pl';

use strict;


app->config(hypnotoad => {listen => ['http://*:1211']});

get '/help' => sub{
	my $c = shift;
	Mojo::IOLoop->subprocess(
		sub {
			return 'MaxEnt for 3 and 5';
		    },
		sub {
			my ($subprocess, $err, @results) = @_;
			$c->reply->exception($err) and return if $err;
			$c->render(text => "$results[0]");
		}
	);
};


get '/score3' => sub{
	my $c = shift;
	my $sequence = $c->param('sequence');
	Mojo::IOLoop->subprocess(
		sub {
			return runscore3($sequence);
		    },
		sub {
			my ($subprocess, $err, @results) = @_;
			$c->reply->exception($err) and return if $err;
			$c->render(text => "$results[0]");
		}
	);
};


get '/score5' => sub{
	my $c = shift;
	my $sequence = $c->param('sequence');
	Mojo::IOLoop->subprocess(
		sub {
			return runscore5($sequence);
		    },
		sub {
			my ($subprocess, $err, @results) = @_;
			$c->reply->exception($err) and return if $err;
			$c->render(text => "$results[0]");
		}
	);
};

app->start('daemon', '-l', 'http://*:1211');
