
rule k2318_27534666dbeb0b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.27534666dbeb0b12"
     cluster="k2318.27534666dbeb0b12"
     cluster_size="24"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="iframe html redir"
     md5_hashes="['1a4a6ae70e24ff47f2809e620faec865cc5d2138','c2086eadb61c0d1935b827922fe5a7e8b5886abd','876eee0c40894d72cb3b213fc7f06f1c87cf6d9d']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.27534666dbeb0b12"

   strings:
      $hex_string = { 697a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c45435445443ec2fbe1e5f0e8f2e53c2f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
