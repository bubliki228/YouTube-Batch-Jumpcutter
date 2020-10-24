# Youtube-Batch-Jumpcutter

Python 3 Tool for downloading ***batches*** of ***silence-free*** high quality ***YouTube*** videos. (ffmpeg engine)

Based on:

- carykh's jumpcutter (https://github.com/carykh/jumpcutter) 

- Quakumei's YouTube-HD-Batch-Downloader (https://github.com/Quakumei/YouTube-HD-Batch-Downloader).

  

## Installation

### Linux

First, you need to clone the repo:

```bash
git clone https://github.com/Quakumei/YouTube-Batch-Jumpcutter
cd YouTube-Batch-Jumpcutter
```

After that, you need to install requirements  and clone dependencies by running `SetupScript.sh :`

(You'll be asked for password in order to run `sudo apt-get install ffmpeg`)

```bash
chmod +x SetupScript.sh
./SetupScript.sh
```

So, you are now ready to use the program!

### Windows

First, you need to clone the repo:

```bash
git clone https://github.com/Quakumei/YouTube-Batch-Jumpcutter
cd YouTube-Batch-Jumpcutter
```

After that, you need to install requirements:`

*You need to install ffmpeg by yourself in that case*

```shell
git clone https://github.com/carykh/jumpcutter
git clone https://github.com/Quakumei/YouTube-HD-Batch-Downloader
pip install -r jumpcutter/requirements.txt
type nul > LINK_LIST.txt
```

So, you are now ready to use the program!



## Usage

### Example

- First, you need to specify links of YouTube videos in`LINK_LIST.txt`, one per line, or put your own videos in `videos_temp_long` folder (create it, if there is no one).

To crop every *silent* moment in the videos please use the following command:

```bash
./JumpBatchCutter.sh
```

or

```bash
./JumpBatchCutter.sh -S 1 -s 99999 -t 0.02 -m 2 -q 1
```

To crop every *sound* moment in the videos and leave only breath-ins use the following command:

```bash
./JumpBatchCutter.sh -S 99999 -s 1 -t 0.02 -m 2 -q 1
```

* The result will be stored in the `Result` folder.

### What do those flags do?

```
                      
  -S SOUNDED_SPEED      the speed that sounded (spoken) frames should be
                        played at. Typically 1.
  
  -s SILENT_SPEED       the speed that silent frames should be played at.
                        999999 for jumpcutting.
                        
  -t SILENT_THRESHOLD   the volume amount that frames' audio needs to surpass
                        to be consider "sounded". It ranges from 0 (silence)
                        to 1 (max volume)
  
  -m FRAME_MARGIN       some silent frames adjacent to sounded frames are
                        included to provide context. How many frames on either
                        the side of speech should be included? That's this
                        variable.
  
  -q FRAME_QUALITY      quality of frames to be extracted from input video. 1
                        is highest, 31 is lowest, 3 is the default.

```

## Known problems:

-  You can't download copyrighted videos from YouTube directly. You should download it somehow by yourself and put them in `videos_temp_long` folder if you want to process them.

## Author:

If you have any questions / suggestions, please contact me.

Ilya Tampio

Telegram: [@quakumei](https://t.me/quakumei) (nickname's yasumi404)

VK: [@quakumei](https://vk.com/id388032588)
