
rule k2318_311915a1c2000932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.311915a1c2000932"
     cluster="k2318.311915a1c2000932"
     cluster_size="416"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="redirector iframe html"
     md5_hashes="['464464a960ebcfc57a6de53772557ea4a4629a2a','8d91ffa74f91f54d8d8ec31b2a05f88d06eb461c','28d313b3af8061dad6e5175fcb2e78c5b7ab3fd2']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.311915a1c2000932"

   strings:
      $hex_string = { 2e7375626d697428293b222073697a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c454354 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
