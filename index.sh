for p in $plugins; do
    fpath=$DOTFILE_PATH/plugins/$p
    [ -f $fpath ] && source $fpath
done

if [ -d $DOTFILE_PATH/private ]; then
    for file in $(ls $DOTFILE_PATH/private); do
        fpath=$DOTFILE_PATH/private/$file
        [ -f $fpath ] && source $fpath
    done
fi
