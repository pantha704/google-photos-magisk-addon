# Google-photos-magisk-addon

These scripts help in obfuscating files with a video or photo as cover.
This helps in hiding the file while uploading it to Google photos,

If combined with "Magisk unlimited google photos upload" module
it can also upload and save files of other types on google for free without any limit


## Installation

```
git clone https://github.com/pantha704/google-photos-magisk-addon
cd google-photos-magisk-addon
chmod +x encode decode
```


## Usage

```
./encode <cover_media> <payload> <disguised_file_name>
```
```
./decode <payload> <cover_media> <output_file_name>
```


## Limitations
---

It works well for smaller files.

For large files decoding might take too long,
you can change the 'bs' attribute in decode script to values 4/8/16 but the lesser the value, the lesser the chances of byteloss while decoding (bigger RAMs can handle high values, but its not a guarantee).
