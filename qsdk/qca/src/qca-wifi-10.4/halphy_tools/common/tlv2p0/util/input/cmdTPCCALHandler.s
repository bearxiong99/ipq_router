#if !defined(WHAL_NUM_11G_CAL_PIERS)
#define WHAL_NUM_11G_CAL_PIERS  14
#define WHAL_NUM_11A_CAL_PIERS  32
#endif
#if !defined(MAX_NUM_CHAINS)
#define MAX_NUM_CHAINS           4
#endif //!defined(MAX_NUM_CHAINS)
#if !defined(NUM_CAL_GAINS_2G)
#define NUM_CAL_GAINS_2G        13
#define NUM_CAL_GAINS_5G        13
#endif

# cmd
CMD= TPCCal

# cmd parm
PARM_START:
UINT8:radioId:1:u:0
UINT8:phyId:1:u:0
PARM_END:

# rsp
RSP= TPCCalRsp

# rsp parm
PARM_START:
UINT8:radioId:1:u:0
UINT8:chanFreq:1:u:0
UINT8:numFreq2G:1:u:3
UINT8:freq2G:WHAL_NUM_11G_CAL_PIERS:14:u:112:137:172
UINT8:numFreq5G:1:u:8
UINT8:freq5G:WHAL_NUM_11A_CAL_PIERS:32:u:76:88:92:104:140:180:189:201
UINT8:numChain:1:u:2
UINT8:chainMasks:MAX_NUM_CHAINS:4:x:0x1:0x2
UINT8:numCALPt2G:1:u:13
INT16:tgtPwr2G:NUM_CAL_GAINS_2G:13:d:8:16:24:32:40:48:56:64:72:80:88:96:104
UINT8:CALPt2G:NUM_CAL_GAINS_2G:13:u:1:2:3:4:5:6:7:8:9:10:11:12:13
UINT8:txGains2G:NUM_CAL_GAINS_2G:13:u:1:2:3:4:5:6:7:8:9:10:11:12:13
UINT8:dacGains2G:NUM_CAL_GAINS_2G:13:u:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8
UINT8:paCfg2G:NUM_CAL_GAINS_2G:13:u:0:0:0:0:0:0:0:0:0:0:0:0:0
UINT8:numCALPt5G:1:u:13
UINT8:CALPt5G:NUM_CAL_GAINS_5G:13:u:1:2:3:4:5:6:7:8:9:10:11:12:13
INT16:tgtPwr5G:NUM_CAL_GAINS_5G:13:d:8:16:24:32:40:48:56:64:72:80:88:96:104
UINT8:txGains5G:NUM_CAL_GAINS_5G:13:u:1:2:3:4:5:6:7:8:9:10:11:12:13
UINT8:dacGains5G:NUM_CAL_GAINS_5G:13:u:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8:-8
UINT8:paCfg5G:NUM_CAL_GAINS_5G:13:u:0:0:0:0:0:0:0:0:0:0:0:0:0
UINT8:miscFlags:1:x:0x80
UINT8:phyId:1:u:0
PARM_END:

