Dead simple integration for running sbt as the make program for scala files.

Uses the mechanism recommended by http://code.google.com/p/simple-build-tool/wiki/IntegrationSupport

This should work with pathogen.

To use it, do nothing more than :make when editing a *.scala file.

I tried to use http://www.vim.org/scripts/script.php?script_id=3124, but it wouldn't run on the old linux distro I've got.

I tried codefellow, which was pretty sweet except that it locked up vim when opening a scala file if its daemon wasn't running and that it didn't support/wouldn't compile for Scala 2.9
