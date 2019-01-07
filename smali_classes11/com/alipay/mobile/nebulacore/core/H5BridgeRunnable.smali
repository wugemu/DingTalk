.class public Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;
.super Ljava/lang/Object;
.source "H5BridgeRunnable.java"


# static fields
.field private static final LOG_GAP_TAG:Ljava/lang/String; = "`_`"

.field private static final TAG:Ljava/lang/String; = "H5BridgeRunnable"

.field private static blackActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blackMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

.field private static jsApiLogBlacklist:Lcom/alibaba/fastjson/JSONArray;


# instance fields
.field private action:Ljava/lang/String;

.field private callLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private eventId:Ljava/lang/String;

.field private h5Page:Liop;

.field private param:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "getAPDataStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "contact"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "getAllContacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "setTitleColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "chooseContact"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "getDTSchemeValue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    const-string/jumbo v1, "setGestureBack"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getSecurityJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiLogBlacklist:Lcom/alibaba/fastjson/JSONArray;

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    const-string/jumbo v1, "forbidden!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    const-string/jumbo v1, "invalid parameter!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    const-string/jumbo v1, "none error!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    const-string/jumbo v1, "not implemented!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    const-string/jumbo v1, "unknown error!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public constructor <init>(Liop;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "h5Page"    # Liop;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liop;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "callLog":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 89
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .locals 49

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    if-nez v3, :cond_1

    .line 4349
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackActionList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    .line 105
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "error"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v23

    .line 107
    .local v23, "error":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "message"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 109
    .local v40, "message":Ljava/lang/String;
    const-string/jumbo v3, "not implemented!"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    const-string/jumbo v3, "h5_upload_not_found_err"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 111
    .local v48, "upload":Ljava/lang/String;
    const-string/jumbo v3, "yes"

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 114
    .local v2, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_2

    .line 115
    const-string/jumbo v3, "h5_not_implemented_api"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v2    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v48    # "upload":Ljava/lang/String;
    :cond_2
    if-eqz v23, :cond_7

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->blackMsgList:Ljava/util/List;

    move-object/from16 v0, v40

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    if-eqz v3, :cond_7

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "errorMessage"

    .line 125
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, "paramStr":Ljava/lang/String;
    :goto_1
    const/4 v12, 0x0

    .line 127
    .local v12, "requestParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lior;->m(Ljava/lang/String;)Liol;

    move-result-object v28

    .line 129
    .local v28, "h5JsCallData":Liol;
    if-eqz v28, :cond_3

    .line 2038
    move-object/from16 v0, v28

    iget-object v12, v0, Liol;->c:Ljava/lang/String;

    .line 134
    .end local v28    # "h5JsCallData":Liol;
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_4

    .line 135
    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 137
    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_5

    .line 138
    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 142
    :cond_5
    const-string/jumbo v3, "h5_jsapiResultErrorLogBlackList"

    .line 144
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v36

    .line 146
    .local v36, "jsapiResultErrorLogBlackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v36, :cond_6

    .line 147
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_6

    .line 148
    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 149
    .local v46, "regex":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v44

    .line 150
    .local v44, "patternLink":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v39

    .line 151
    .local v39, "matcherLink":Ljava/util/regex/Matcher;
    if-eqz v39, :cond_d

    invoke-virtual/range {v39 .. v39}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 152
    const-string/jumbo v12, ""

    .line 153
    const-string/jumbo v13, ""

    .line 159
    .end local v29    # "i":I
    .end local v39    # "matcherLink":Ljava/util/regex/Matcher;
    .end local v44    # "patternLink":Ljava/util/regex/Pattern;
    .end local v46    # "regex":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->useNewLogUpload()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 160
    sget-object v3, Liov$a;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getPageData()Lior;

    move-result-object v4

    invoke-virtual {v4}, Lior;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "jsapiName"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "params"

    .line 164
    invoke-virtual {v3, v4, v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "code"

    .line 165
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "msg"

    .line 166
    invoke-virtual {v3, v4, v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getPageData()Lior;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v38

    .line 168
    .local v38, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static/range {v38 .. v38}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 189
    .end local v12    # "requestParam":Ljava/lang/String;
    .end local v13    # "paramStr":Ljava/lang/String;
    .end local v23    # "error":I
    .end local v36    # "jsapiResultErrorLogBlackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v38    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v40    # "message":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 190
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 192
    .local v8, "h5DevDebugProvider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    if-eqz v8, :cond_9

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v13

    .line 196
    .restart local v13    # "paramStr":Ljava/lang/String;
    :goto_4
    const/4 v12, 0x0

    .line 197
    .restart local v12    # "requestParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lior;->m(Ljava/lang/String;)Liol;

    move-result-object v28

    .line 199
    .restart local v28    # "h5JsCallData":Liol;
    if-eqz v28, :cond_8

    .line 3038
    move-object/from16 v0, v28

    iget-object v12, v0, Liol;->c:Ljava/lang/String;

    .line 204
    .end local v28    # "h5JsCallData":Liol;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 205
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->jsApiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v12    # "requestParam":Ljava/lang/String;
    .end local v13    # "paramStr":Ljava/lang/String;
    :cond_9
    :goto_5
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    if-nez v3, :cond_a

    .line 218
    const-string/jumbo v3, "h5_secJsApiCallConfig"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 219
    .local v34, "jsApiConfig":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    :try_start_0
    const-class v3, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    move-object/from16 v0, v34

    invoke-static {v0, v3}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    sput-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v34    # "jsApiConfig":Ljava/lang/String;
    :cond_a
    :goto_6
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->isEnable()Z

    move-result v3

    if-nez v3, :cond_12

    .line 229
    :cond_b
    const-string/jumbo v3, "H5BridgeRunnable"

    const-string/jumbo v4, "jsApiConfigModel == null or not enable!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v8    # "h5DevDebugProvider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    .restart local v23    # "error":I
    .restart local v40    # "message":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 147
    .restart local v12    # "requestParam":Ljava/lang/String;
    .restart local v13    # "paramStr":Ljava/lang/String;
    .restart local v29    # "i":I
    .restart local v36    # "jsapiResultErrorLogBlackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v39    # "matcherLink":Ljava/util/regex/Matcher;
    .restart local v44    # "patternLink":Ljava/util/regex/Pattern;
    .restart local v46    # "regex":Ljava/lang/String;
    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 170
    .end local v29    # "i":I
    .end local v39    # "matcherLink":Ljava/util/regex/Matcher;
    .end local v44    # "patternLink":Ljava/util/regex/Pattern;
    .end local v46    # "regex":Ljava/lang/String;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "jsapiName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "log":Ljava/lang/String;
    sget-object v3, Liov$a;->h:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    .line 179
    invoke-interface {v6}, Liop;->getPageData()Lior;

    move-result-object v6

    invoke-virtual {v6}, Lior;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    .line 181
    invoke-interface {v9}, Liop;->getPageData()Lior;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    .line 182
    invoke-interface {v10}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v10

    .line 181
    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lior;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "H-MM"

    .line 175
    invoke-static/range {v3 .. v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceLoggerV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 195
    .end local v7    # "log":Ljava/lang/String;
    .end local v12    # "requestParam":Ljava/lang/String;
    .end local v13    # "paramStr":Ljava/lang/String;
    .end local v23    # "error":I
    .end local v36    # "jsapiResultErrorLogBlackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v40    # "message":Ljava/lang/String;
    .restart local v8    # "h5DevDebugProvider":Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 209
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    if-nez v3, :cond_11

    const-string/jumbo v21, ""

    .line 211
    .local v21, "data":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v8, v3, v4, v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->eventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 210
    .end local v21    # "data":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    .line 224
    .restart local v34    # "jsApiConfig":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 225
    .local v22, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5BridgeRunnable"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 232
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v34    # "jsApiConfig":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    move-result-object v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    :cond_13
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiLogBlacklist:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_14

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiLogBlacklist:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    :cond_14
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 243
    .local v20, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    .line 3474
    iget-object v0, v3, Lior;->w:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 245
    .local v43, "pageUrl":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v35, "jsApiDetail":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "`_`"

    :goto_8
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v47, ""

    .line 249
    .local v47, "securityLevel":Ljava/lang/String;
    const/16 v32, 0x0

    .line 251
    .local v32, "isInWhiteList":Z
    const-string/jumbo v3, "rpc"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 252
    const-string/jumbo v47, "rpc"

    .line 253
    if-eqz v20, :cond_15

    .line 254
    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isRpcDomains(Ljava/lang/String;)Z

    move-result v32

    .line 263
    :cond_15
    :goto_9
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    if-eqz v32, :cond_1d

    const-string/jumbo v3, "Y"

    :goto_a
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v30, ""

    .line 268
    .local v30, "inParam":Ljava/lang/String;
    const-string/jumbo v41, ""

    .line 271
    .local v41, "outParam":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 273
    .local v18, "callTimestamp":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lior;->m(Ljava/lang/String;)Liol;

    move-result-object v28

    .line 275
    .restart local v28    # "h5JsCallData":Liol;
    const-string/jumbo v33, ""

    .line 276
    .local v33, "joMsg":Ljava/lang/String;
    if-eqz v28, :cond_16

    .line 4038
    move-object/from16 v0, v28

    iget-object v0, v0, Liol;->c:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 280
    :cond_16
    const-string/jumbo v13, ""

    .line 281
    .restart local v13    # "paramStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_17

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v13

    .line 284
    :cond_17
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v31

    .line 285
    .local v31, "inSize":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v42

    .line 286
    .local v42, "outSize":I
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 287
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    move-result-object v14

    .line 288
    .local v14, "allConfig":Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->isIn()Z

    move-result v15

    .line 289
    .local v15, "allIn":Z
    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->isOut()Z

    move-result v17

    .line 290
    .local v17, "allOut":Z
    invoke-virtual {v14}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->getMaxLength()I

    move-result v16

    .line 291
    .local v16, "allMaxLength":I
    if-eqz v15, :cond_18

    .line 292
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v16

    if-le v3, v0, :cond_1e

    const/4 v3, 0x0

    add-int/lit8 v4, v16, -0x1

    .line 293
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 296
    :cond_18
    :goto_b
    if-eqz v17, :cond_19

    .line 297
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v16

    if-le v3, v0, :cond_1f

    const/4 v3, 0x0

    add-int/lit8 v4, v16, -0x1

    .line 298
    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 318
    .end local v14    # "allConfig":Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
    .end local v15    # "allIn":Z
    .end local v16    # "allMaxLength":I
    .end local v17    # "allOut":Z
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 319
    move-object/from16 v41, v13

    .line 320
    const-string/jumbo v37, "N"

    .line 325
    .local v37, "jsapiSuccess":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->callLog:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->eventId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 329
    :cond_1a
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 330
    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 333
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 334
    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->h5Page:Liop;

    invoke-interface {v3}, Liop;->getPageData()Lior;

    move-result-object v3

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4345
    const-string/jumbo v5, "H5PageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appendJsApiDetail : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    iget-object v5, v3, Lior;->aV:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 4347
    if-eqz v5, :cond_25

    array-length v5, v5

    const/16 v6, 0x2800

    if-le v5, v6, :cond_25

    .line 4348
    const-string/jumbo v3, "H5PageData"

    const-string/jumbo v4, "detailBytes.length > MAX_LOG_LENGTH, return"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    .end local v13    # "paramStr":Ljava/lang/String;
    .end local v18    # "callTimestamp":J
    .end local v28    # "h5JsCallData":Liol;
    .end local v30    # "inParam":Ljava/lang/String;
    .end local v31    # "inSize":I
    .end local v32    # "isInWhiteList":Z
    .end local v33    # "joMsg":Ljava/lang/String;
    .end local v37    # "jsapiSuccess":Ljava/lang/String;
    .end local v41    # "outParam":Ljava/lang/String;
    .end local v42    # "outSize":I
    .end local v47    # "securityLevel":Ljava/lang/String;
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "`_`"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 257
    .restart local v32    # "isInWhiteList":Z
    .restart local v47    # "securityLevel":Ljava/lang/String;
    :cond_1c
    const-class v3, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    .line 258
    .local v45, "permissionManager":Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
    if-eqz v45, :cond_15

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;->getAliLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;->urlInWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    goto/16 :goto_9

    .line 264
    .end local v45    # "permissionManager":Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
    :cond_1d
    const-string/jumbo v3, "N"

    goto/16 :goto_a

    .restart local v13    # "paramStr":Ljava/lang/String;
    .restart local v14    # "allConfig":Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
    .restart local v15    # "allIn":Z
    .restart local v16    # "allMaxLength":I
    .restart local v17    # "allOut":Z
    .restart local v18    # "callTimestamp":J
    .restart local v28    # "h5JsCallData":Liol;
    .restart local v30    # "inParam":Ljava/lang/String;
    .restart local v31    # "inSize":I
    .restart local v33    # "joMsg":Ljava/lang/String;
    .restart local v41    # "outParam":Ljava/lang/String;
    .restart local v42    # "outSize":I
    :cond_1e
    move-object/from16 v30, v33

    .line 293
    goto/16 :goto_b

    :cond_1f
    move-object/from16 v41, v13

    .line 298
    goto/16 :goto_c

    .line 301
    .end local v14    # "allConfig":Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
    .end local v15    # "allIn":Z
    .end local v16    # "allMaxLength":I
    .end local v17    # "allOut":Z
    :cond_20
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_19

    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 302
    sget-object v3, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->jsApiConfigModel:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->getEvery()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v24

    .line 303
    .local v24, "everyConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "in"

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v25

    .line 304
    .local v25, "everyIn":Z
    const-string/jumbo v3, "out"

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v27

    .line 305
    .local v27, "everyOut":Z
    const-string/jumbo v3, "maxLength"

    const/16 v4, 0x32

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v26

    .line 306
    .local v26, "everyMaxLength":I
    if-eqz v25, :cond_21

    .line 307
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v26

    if-le v3, v0, :cond_22

    const/4 v3, 0x0

    add-int/lit8 v4, v26, -0x1

    .line 308
    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 311
    :cond_21
    :goto_e
    if-eqz v27, :cond_19

    .line 312
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v26

    if-le v3, v0, :cond_23

    const/4 v3, 0x0

    add-int/lit8 v4, v26, -0x1

    .line 313
    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    :goto_f
    goto/16 :goto_c

    :cond_22
    move-object/from16 v30, v33

    .line 308
    goto :goto_e

    :cond_23
    move-object/from16 v41, v13

    .line 313
    goto :goto_f

    .line 322
    .end local v24    # "everyConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "everyIn":Z
    .end local v26    # "everyMaxLength":I
    .end local v27    # "everyOut":Z
    :cond_24
    const-string/jumbo v37, "Y"

    .restart local v37    # "jsapiSuccess":Ljava/lang/String;
    goto/16 :goto_d

    .line 4351
    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lior;->aV:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lior;->aV:Ljava/lang/String;

    goto/16 :goto_0
.end method
