# Tcl package index file, version 1.1
# This file is generated by the "pkg_mkIndex -direct" command
# and sourced either when an application starts up or
# by a "package unknown" script.  It invokes the
# "package ifneeded" command to set up package-related
# information so that packages will be loaded automatically
# in response to "package require" commands.  When this
# script is sourced, the variable $dir must contain the
# full path name of this file's directory.

package ifneeded xotcl::pattern::adapter 0.9 [list source [file join $dir adapter.xotcl]]
package ifneeded xotcl::pattern::chainOfResponsibility 0.9 [list source [file join $dir ChainOfResponsibility.xotcl]]
package ifneeded xotcl::pattern::composite 0.9 [list source [file join $dir composite.xotcl]]
package ifneeded xotcl::pattern::link 0.9 [list source [file join $dir link.xotcl]]
package ifneeded xotcl::pattern::manager 0.8 [list source [file join $dir manager.xotcl]]
package ifneeded xotcl::pattern::observer 0.8 [list source [file join $dir observer.xotcl]]
package ifneeded xotcl::pattern::onCalleeProxy 0.8 [list source [file join $dir OnCalleeProxy.xotcl]]
package ifneeded xotcl::pattern::singleton 0.8 [list source [file join $dir Singleton.xotcl]]
package ifneeded xotcl::pattern::sortedCompositeWithAfter 0.9 [list source [file join $dir SortedComposite.xotcl]]