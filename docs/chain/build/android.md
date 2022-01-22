# Android (using docker):

        # Build image (select android64.Dockerfile for aarch64)
        cd utils/build_scripts/ && docker build -f android32.Dockerfile -t lethean-android .
        # Create container
        docker create -it --name lethean-android lethean-android bash
        # Get binaries
        docker cp lethean-android:/opt/android/lethean/build/release/bin .
