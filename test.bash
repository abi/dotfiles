#If the {PWD}/scripts is
SCRIPTS_DIR=`pwd`/scripts
if grep $SCRIPTS_DIR ~/.bashrc 1>/dev/null
then
    #Do nothing if bashrc already has the line adding the $SCRIPTS_DIR to $PATH
    echo 'Scripts dir '$SCRIPTS_DIR' was already added to $PATH'
else
    echo "" >> ~/.bashrc
    echo "####SCRIPTS_DIR####" >> ~/.bashrc
    echo 'export PATH='$SCRIPTS_DIR':$PATH' >> ~/.bashrc
    echo 'Added Scripts dir '$SCRIPTS_DIR' to $PATH'
fi

# TODO: Rename setup.sh to setup.bash