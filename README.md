# rprkc
A simple script for repairing permissions and rebuilding the kextcache along with the prelinked kernel (for use on OS X/macOS 10.10 and later).

## How to use
Download from [here](https://raw.githubusercontent.com/iamkurumi/rprkc/master/rprkc.sh) (right click and select Save Link As...), save it in a directory that's easy to access through Terminal (e.g. your home directory).

Open Terminal and navigate to the directory where you saved `rprkc.sh`, then make it executable by running `chmod +x rprkc.sh`.

__Example (when saved in home directory):__
```
cd ~
chmod +x rprkc.sh
```

Finally, run the script with `sudo`.
```
sudo rprkc.sh
```

## Credits
* Hervé from OSXLatitude for the original guide linked [here](https://osxlatitude.com/forums/topic/9961-how-do-i-repair-permissions-and-rebuild-the-cache-yosemite-and-later/), as this script is just an automated version of that.
