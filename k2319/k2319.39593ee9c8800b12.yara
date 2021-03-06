
rule k2319_39593ee9c8800b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2319.39593ee9c8800b12"
     cluster="k2319.39593ee9c8800b12"
     cluster_size="13"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="kryptik script diplugem"
     md5_hashes="['1daedb33f4887098de67e21b535d3b84879a9d31','d24d8db899ffdcd1dc728028391042426be58e3f','2ea98e5286aee7544e8984dc5f1fffa8fed8c2e7']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2319.39593ee9c8800b12"

   strings:
      $hex_string = { 6e646566696e6564297b72657475726e20705b535d3b7d76617220523d28283134342e3545312c3078323141293e3134323f28312e33343145332c3078636339 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
