#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/install/lib/python2.7/dist-packages:/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build" \
    "/usr/bin/python" \
    "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_gazebo/setup.py" \
    build --build-base "/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/build/autorally/autorally_gazebo" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/install" --install-scripts="/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/install/bin"
