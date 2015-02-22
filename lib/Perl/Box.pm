package Perl::Box;

our $VERSION = '0.03';

1;

__END__

=head1 NAME

Perl::Box - is a ready to use Codio box. Start coding now!

=begin HTML

<p><a href="https://metacpan.org/pod/Perl::Box" target="_blank"><img alt="CPAN version" src="https://badge.fury.io/pl/Perl-Box.svg"></a> <a href="https://travis-ci.org/fibo/Perl-Box-pm" target="_blank"><img alt="Build Status" src="https://travis-ci.org/fibo/Perl-Box-pm.svg?branch=master"></a></p>

=end HTML

=head1 SYNOPSIS

Go to L<Codio|https://codio.com/>. Create a project. Choose Perl5 stack. Start coding!

=head1 MOTIVATION

I really got addicted with L<Codio|https://codio.com/>.
During L<2015 CPAN Pull Request Challenge|http://blogs.perl.org/users/neilb/2014/12/take-the-2015-cpan-pull-request-challenge.html>, I recieved one distribution assignment every month by L<Niel Bowers|http://neilb.org/>.
Compiling latest Perl and distributions like L<Moose> and L<Dist::Zilla> with all dependencies takes time.
There were no Perl based Codio stack.

So, since C<2+2=4>, I wanted a ready to use Perl Box to start coding immediately.

=head1 DESCRIPTION

L<Perl::Box> is a Task, a.k.a. Bundle distribution containing most used CPAN stuff needed for coding.
L<Perl-Box|https://codio.com/fibo/Perl-Box> is a Codio box.
They are used to create a Codio stack that you can use to start coding Perl immediately.

=head1 STUFF INCLUDED

How to add or update distributions included? Fork L<this|https://github.com/fibo/Perl-Box-pm>, edit the Makefile.PL and send a pull request.

Note that versions reported are those in the Perl Box actually.

=over 4

=item *

L<Task::BeLike::FIBO> C<v0.14>

Yes, 'cause I'm my first (and only!? :) user. Read here L<what is included|https://metacpan.org/pod/Task::BeLike::FIBO#STUFF-INCLUDED>.

=item *

L<Catalyst::Devel> C<v1.39>

=item *

L<Catalyst::Runtime> C<v5.90083>

=item *

L<Mojolicious> C<v5.81>

I really like it! It is my favourite web framework.

L<Dancer> C<v1.3132>

Par condicio

=item *

L<Moose> C<v2.1403>

Long live the Meta programming protocol!

=item *

L<Moo> C<v1.007000>

Cause it completes L<Moose> when performance overhead is a problem.

=item *

L<Dist::Zilla> C<v5.031>

It is used by a lot of Perl coders.

=item *

L<App::cloc> C<v0.01>

I packaged the famous L<CLOC|http://cloc.sourceforge.net/> tool. It is worth to add it in every development environment.

=item *

L<DBI> C<v1.633>

=item *

L<DBIx::Class> C<v0.082810>

=item *

L<DateTime> C<1.18>

=item *

L<Template> C<2.26>

=item *

L<Test::Class> C<0.48>

=item *

L<Test::Most> C<0.34>

=item *

L<YAML> C<v1.14>

=item *

L<App::FatPacker> C<v0.010002>

=item *

L<Digest::MD5> C<v2.54>

=item *

L<Regexp::Common> C<2013031301>

=item *

L<LWP> C<v6.13>

One of the must have distros.

=item *

L<List::Util> C<v1.41>

=item *

L<List::MoreUtils> C<v0.405>

=back

=head1 CREATION

Wanna create your own Perl Box? It will take few minutes.

Perl Box is created from Codio default stack. Create a Codio project and open a Terminal.

=head2 PERL

Use L<dotsoftware|http://g14n.info/dotsoftware/> to install latest Perl. Just copy and paste the following commands.

    # get latest .software
    cd
    git clone https://github.com/fibo/.software.git
    # source it in your profile and in current session
    [ -f ~/.bash_profile ] && grep 'source ~/.software/etc/profile' ~/.bash_profile || echo 'source ~/.software/etc/profile' >> ~/.bash_profile && source ~/.software/etc/profile
    # install latest Perl
    .software_install Perl
    # you are done!

Configure L<a CPAN client that works like a charm|http://g14n.info/2014/03/a-cpan-client-that-works-like-charm/>.

=head2 DISTRIBUTIONS

Install what you need from CPAN, for instance

    cpan Perl::Box

=head2 EDITOR

Choose L<vim|http://www.vim.org/> as default editor

    # Needed by git commit -a
    echo export EDITOR=vim >> ~/.bash_profile

Minimal vim configuration

    cat >> ~/.vimrc <<EOF
    " my Perl preferences
    autocmd filetype perl map <F2> :%!perltidy<CR> " indent
    autocmd filetype perl map <F3> :!prove -l<CR>  " run tests
    autocmd filetype perl setlocal autoindent
    autocmd filetype perl setlocal expandtab
    autocmd filetype perl setlocal shiftwidth=4
    autocmd filetype perl setlocal tabstop=4

    " use perltidy for .pl, .pm, and .t
    au BufRead,BufNewFile *.pl setl equalprg=perltidy
    au BufRead,BufNewFile *.pm setl equalprg=perltidy
    au BufRead,BufNewFile *.t setl equalprg=perltidy
    EOF


=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by L<G. Casati|http://g14n.info>.

This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself.

=cut

