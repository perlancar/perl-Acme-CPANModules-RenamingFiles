package Acme::CPANModules::RenamingFiles;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use Acme::CPANModulesUtil::Misc;

our $LIST = {
    summary => 'List of Perl modules (and scripts) to rename multiple files',
    description => <<'_',

This list will attempt to catalog Perl modules (and scripts) that can be used to
rename multiple files, often by letting you transform the filename using Perl
code or regex.

The granddaddy of all this is of course Larry's own script <prog:rename>, which
appeared as a dozen-line simple example at least as early as 1989 in `eg/`
subdirectory of the Perl 3.0 source code (while regex itself was introduced just
a year earlier in Perl 2.0). Later in Perl 5.8 the examples subdirectory was
removed from the source code. Currently there are at least three evolutions from
this script on CPAN: <pm:rename> by Peder Stray (since 2000), <pm:File::Rename>
by Robin Barker (since 2005), and <pm:App::FileTools::BulkRename> by Stirling
Westrup (since 2010).

<prog:rename> by Peder Stray (you might have difficulty installing the archive
using CPAN client since it does not include a module) is based on Larry Wall's
`rename` script and has grown to feature dry-run mode, backup, interactive
prompt, etc.

<prog:rename> from <pm:File::Rename> by Robin Barker is also based on Larry
Wall's script and refactors the functionality into a module. It does not have as
many options as Peder's version but offers a Unicode option.

<prog:brn> from <pm:App::FileTools::BulkRename> (since 2010) by Stirling
Westrup. Another fork of Larry Wall's `rename`. It features dry-run mode
(`--nop`) and saving/loading presets of options (including the Perl expression)
into its config file.

<prog:perlmv> from <pm:App::perlmv> (since 2010) is my take in this space. I
wanted to reuse my rename one-liners so I made a "scriptlet" feature which you
can save and run using the script (`brn` also does this, in the form of
presets). `perlmv` features dry-run mode, recursive renaming, reverse ordering
(to work around issue like wanting to rename files named 1, 2, 3, ... to 2, 3,
4, ...). The distribution also comes with sister scripts <prog:perlln>,
<prog:perlln_s>, and <prog:perlcp>.

<prog:perlmv-u> from <pm:App::perlmv> (since 2017) is my other take. The main
feature is undo. It does not yet has nearly as many features as its older
brother `perlmv`.

<prog:pmv> from <pm:File::PerlMove> (since 2007) by Johan Vromans of
`Getopt::Long` fame. Like `File::Rename`, it also refactors the logic into
module. It also added a DWIM for specific Perl expression like `uc`, `lc` when
dealing with case-insensitive filesystems.

<pm:App::FileRenameUtils>, a collection of mass renaming utilities.

_
    'x.app.cpanmodules.show_entries' => 0,
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:

=head1 prepend:SEE ALSO
