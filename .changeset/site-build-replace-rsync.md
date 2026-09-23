---
"comet-site-v1": patch
"comet-site-v2": patch
---

Replace `rsync` with `cp` in the build CronJob

Since rsync 3.5.0 the build job fails when it writes the tar to the `generated-sites` volume, with `failed to set permissions on "/mnt/generated-sites/.build_<date>.tar.<suffix>": Operation not permitted` and exit code 23. rsync sets the permissions of the file it transfers and the volume does not allow that. No build reaches the volume, so the site keeps serving the previous one.

rsync has nothing to offer in this step anyway: it copies a single local file, without delta transfer or a remote host. `cp` takes the mode from the source while it creates the file and runs no `chmod` afterwards, so the volume accepts the copy. `rm` takes over what `--remove-source-files` did.
