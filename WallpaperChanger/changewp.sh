#! /bin/bash
#
#

set -e


help(){
        echo "
        ChangeWallpaper cli wrapper

        useage:
            -l, --list          :   lists all images
            -r, --random        :   gets random image
            -h, --help          :   prints this help page
        "
}


case "$1" in
    -l|--list)
        echo "list of images in system: "
        find ~/pics/Wallpapers/ -type f -not -path "*/current*" -printf "%f\n"
        ;;
    -r|--random)
        fil=$(find ~/pics/Wallpapers/ -type f -not -path "*/current*" |sort -R |head -n1)
        cp $fil ~/pics/Wallpapers/.current/current.image
        feh --bg-scale $fil
        ;;

    -h|--help|'')
        help
        ;;
    *)
        fil=$(find ~/pics/Wallpapers/ -type f -name "$1*" |head -n1)
        if [ -z "$fil" ] 
        then
            echo "image '$1' not found in ~/pics/Wallpapers/"
        else
            cp $fil ~/pics/Wallpapers/.current/current.image
            feh --bg-scale $fil
        fi
        ;;
esac
