if [ ! -f /usr/local/extra_homestead_software_installed ]; then

    # We should be super user
    sudo su -

    # Add latest node repo...
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

    # Let's install some tools
    apt-get install zsh tmux htop nodejs build-essential -y > /dev/null

    # Let's clone Oh-My-Zsh
    git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh

    # Let's clone our Hoestead-After
    git clone git://github.com/rigor789/Homestead-After.git /home/vagrant/.homestead-after

    # Let's use our .zshrc
    cp /home/vagrant/.homestead-after/.zshrc /home/vagrant/.zshrc

    # Change default shell to ZSH
    chsh -s /usr/bin/zsh vagrant

    # Set up default GIT stuff...
    cp /home/vagrant/.homestead-after/.gitconfig /home/vagrant/.gitconfig
    git config --global user.name "rigor789"
    git config --global user.email "rigor789@gmail.com"

    # Install some global node packages...
    npm install --global yarn pm2 bunyan

    # Only run this once!
    touch /usr/local/extra_homestead_software_installed

else
    echo "Homestead extras are already installed..."
fi
