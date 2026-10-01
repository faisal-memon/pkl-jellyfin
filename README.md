# pkl-jellyfin

Typed Pkl module for rendering Jellyfin Docker Compose deployments.

It separates Jellyfin settings from Docker Compose settings, including the image repository and version, host state directories, ports, restart policy, media mounts, networks, and optional hardware acceleration. Host paths and media remain deployment-specific values in the consuming host repository.
