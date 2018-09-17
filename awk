$ lvdisplay|awk  '/LV Name/{n=$3} /Block device/{d=$3; sub(".*:","dm-",d); print d,n;}'
dm-1 swap
dm-2 home
dm-0 root

# sample data for above command
 LV Path                /dev/centos_mhau/swap
  LV Name                swap
  VG Name                centos_myhost
  LV UUID                HqVZAh-sSuE-3zIQ-Ypvs-TR0F-IJBW-iygC3i
  LV Write Access        read/write
...  truncated...
  LV Status              available
  # open                 2
  LV Size                3.62 GiB
  Current LE             928
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     256
  Block device           253:1
   
  --- Logical volume ---
  LV Path                /dev/centos_mhau/home
  LV Name                home
  VG Name                centos_myhost
  LV UUID                0spDnF-RE3k-opaq-2SYD-o6FU-cy2U-GPgOXG
  LV Write Access        read/write
  ...  truncated...
  LV Status              available
  # open                 1
  LV Size                644.00 GiB
  Current LE             164865
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     256
  Block device           253:2
   
   --- Logical volume ---
  LV Path                /dev/centos_mhau/root
  LV Name                root
  VG Name                centos_myhost
  LV UUID                AekyNA-V68O-Jctk-tMWK-uOOQ-bgGB-SImkaT
  LV Write Access        read/write
...  truncated...
  LV Status              available
  # open                 1
  LV Size                50.00 GiB
  Current LE             12800
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     256
