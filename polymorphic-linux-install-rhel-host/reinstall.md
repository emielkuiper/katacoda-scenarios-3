Now that we've subscribed to the Polyverse mirrors, it is transparent to the host. The package manager doesn't know
anything different, and we can use all its power to our benefit.

To reinstall all packages, for Red Hat Enterprise Linux, we run:

`yum reinstall \*`{{execute}}

All this command does, is updates the package manager metadata, and reinstalls all packages in-place.