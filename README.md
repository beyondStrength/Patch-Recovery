# Similar script
You can also refer this [script](https://github.com/engineer4t/fastboot-patcher)


# Patch-vendor_boot
This CI service patches vendor_boot images of Samsung to enable Fastbootd. Based on Phh's [script](https://github.com/phhusson/samsung-galaxy-a51-gsi-boot)

# How to use:
- Fork this repo.
- Extract your vendor_boot.img.lz4 and upload vendor_boot.img (not lz4) to [transfer.sh](https://transfer.sh/) or any other file hosting sites. Once uploaded right click on the Download button and copy the URL. Avoid Gdrive links for now as it has been causing an error in some cases. 
- Head over to Actions tab. Click on vendor_boot -> Run workflow. Insert the copied URL in the vendor_boot URL field and Start the workflow
- The Patching process will start
- A Patched-vendor_boot.zip will be uploaded at the end of the process. Download it and extract your patched vendor_boot image. The Image will already also be repacked to .tar for flashing directly through Odin
![](https://s3.bmp.ovh/imgs/2022/04/19/91ef3a3ee9255e9c.png)
- Flash vbmeta_disabled_r if needed

# Credits
- [Phhusson](https://github.com/phhusson) Without his script nothing would be possible at the first place
- [James Nguyen](https://github.com/thongass000) Helping me in simplifying the scripts and tweaking it
