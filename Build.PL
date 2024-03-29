
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.020.
use strict;
use warnings;

use Module::Build 0.28;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.28"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => 0,
    "Module::Build" => "0.28"
  },
  "dist_abstract" => "Automatically set PrePAN author and module URLs",
  "dist_author" => [
    "Olaf Alders <olaf\@wundercounter.com>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-PrePAN",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::PrePAN",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dist::Zilla::Role::MetaProvider" => 0,
    "Moose" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Module::Build" => "0.28",
  "Test::More" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
