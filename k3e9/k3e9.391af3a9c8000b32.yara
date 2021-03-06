
rule k3e9_391af3a9c8000b32
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.391af3a9c8000b32"
     cluster="k3e9.391af3a9c8000b32"
     cluster_size="101"
     filetype = "PE32 executable (GUI) Intel 80386"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="backdoor tofsee injector"
     md5_hashes="['021315d0a3cabbc5b8e1c5ef9d1f313e','02d45af9cb39880da4bb1a630cad7d9d','6ed6b5ca25849f67d1d1c9dc775f7f4b']"

   strings:
      $hex_string = { 8847018a46028847028b45085e5fc9c3908d7431fc8d7c39fcf7c7030000007524c1e90283e20383f908720dfdf3a5fcff2495306840008bfff7d9ff248de067 }

   condition:
      
      filesize > 262144 and filesize < 1048576
      and $hex_string
}
