.class public Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;
.super Ljava/lang/Object;
.source "H5BridgeImpl.java"

# interfaces
.implements Linx;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BridgeImpl"

.field private static WHITE_EVENT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WHITE_JSAPI_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiWhiteParseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appId:Ljava/lang/String;

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

.field private callPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lioa;",
            ">;"
        }
    .end annotation
.end field

.field private h5Page:Liop;

.field private released:Z

.field private size:I

.field private webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private whiteCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_EVENT_LIST:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_JSAPI_LIST:Ljava/util/List;

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_EVENT_LIST:Ljava/util/List;

    const-string/jumbo v1, "JSPlugin_AlipayH5Share"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_EVENT_LIST:Ljava/util/List;

    const-string/jumbo v1, "beforeunload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_EVENT_LIST:Ljava/util/List;

    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_EVENT_LIST:Ljava/util/List;

    const-string/jumbo v1, "nbcomponent.canrender"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_JSAPI_LIST:Ljava/util/List;

    const-string/jumbo v1, "showNetWorkCheckActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_JSAPI_LIST:Ljava/util/List;

    const-string/jumbo v1, "showUCFailDialog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_JSAPI_LIST:Ljava/util/List;

    const-string/jumbo v1, "setKeyboardType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_JSAPI_LIST:Ljava/util/List;

    const-string/jumbo v1, "monitorH5Performance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_JSAPI_LIST:Ljava/util/List;

    const-string/jumbo v1, "getStartupParams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Liop;)V
    .locals 3
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5Page"    # Liop;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->apiWhiteParseList:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->whiteCode:Ljava/util/List;

    .line 64
    const/16 v1, 0x2710

    iput v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->size:I

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    .line 87
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    .line 88
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    .line 90
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->appId:Ljava/lang/String;

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->initChart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5BridgeImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->executeNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->executeWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->whiteCode:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method private enableTinyIgnorePermission()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    const-string/jumbo v0, "no"

    const-string/jumbo v1, "h5_enableTinyIgnorePermission"

    .line 252
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private enableViewId()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 527
    const-string/jumbo v1, "h5_enable_viewId_event"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 531
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private executeNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 25
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 157
    .local v9, "eventId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    .line 2121
    .local v16, "poolEvent":Z
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 160
    .local v6, "callParam":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v16, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lioa;

    .line 162
    .local v7, "callback":Lioa;
    if-eqz v7, :cond_2

    .line 163
    invoke-interface {v7, v6}, Lioa;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 165
    :cond_2
    const-string/jumbo v20, "H5BridgeImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "H5 callback for "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3065
    .end local v7    # "callback":Lioa;
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 170
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    move-object/from16 v20, v0

    .line 3113
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/4 v15, 0x0

    .line 172
    .local v15, "paramStr":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 173
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v15

    .line 174
    const-string/jumbo v20, "funcName"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_4
    const-string/jumbo v20, "H5BridgeImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "jsapi req name={"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "} eventId "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->size:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    const-string/jumbo v20, "no"

    const-string/jumbo v21, "h5_notLogForMaxReq"

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 181
    const-string/jumbo v20, "H5BridgeImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "match size substring "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->size:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 185
    :cond_5
    new-instance v21, Liol$a;

    invoke-direct/range {v21 .. v21}, Liol$a;-><init>()V

    .line 4049
    move-object/from16 v0, v21

    iput-object v4, v0, Liol$a;->a:Ljava/lang/String;

    .line 4054
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Liol$a;->b:J

    .line 5069
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v22, 0x1f4

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    .line 5070
    const/16 v20, 0x0

    const/16 v22, 0x1f4

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 4059
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Liol$a;->c:Ljava/lang/String;

    .line 6064
    new-instance v12, Liol;

    const/16 v20, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Liol;-><init>(Liol$a;B)V

    .line 187
    .local v12, "jsCallData":Liol;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Liop;->getPageData()Lior;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Liop;->getPageData()Lior;

    move-result-object v20

    .line 6113
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 6171
    const-string/jumbo v22, "H5PageData"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "addJsapiInfo "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7026
    iget-object v0, v12, Liol;->a:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6171
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lior;->ak:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lior;->z:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6172
    move-object/from16 v0, v20

    iget-object v0, v0, Lior;->aD:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7081
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v20, v0

    .line 192
    move-object/from16 v0, v20

    instance-of v11, v0, Liop;

    .line 194
    .local v11, "isH5Page":Z
    if-eqz v11, :cond_7

    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v20

    const-class v21, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 195
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 8081
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 196
    check-cast v10, Liop;

    .line 197
    .local v10, "h5Page":Liop;
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 198
    .local v13, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v20, "subType"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v20, "request"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v20, "eventId"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v20, Liov$a;->v:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v10, v0, v13}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 204
    .end local v10    # "h5Page":Liop;
    .end local v13    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    if-eqz p2, :cond_b

    .line 205
    move-object/from16 v8, p2

    .line 209
    .local v8, "context":Liny;
    :goto_2
    if-eqz v11, :cond_d

    .line 9081
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 210
    check-cast v10, Liop;

    .line 211
    .restart local v10    # "h5Page":Liop;
    invoke-interface {v10}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v19

    .line 212
    .local v19, "url":Ljava/lang/String;
    invoke-interface {v10}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v21, "appId"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "appId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 216
    .local v18, "shouldInterceptJSApiCallFromTiny":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 217
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5, v8, v10}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->shouldInterceptJSApiCall(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;Liop;)I

    move-result v18

    .line 219
    :cond_8
    const-string/jumbo v20, "H5BridgeImpl"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "shouldInterceptJSApiCall result "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-nez v18, :cond_c

    .line 223
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v20

    const-class v21, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 224
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    .line 223
    invoke-virtual/range {v20 .. v21}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;

    .line 225
    .local v17, "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    const/4 v14, 0x1

    .line 226
    .local v14, "oldPermission":Z
    if-eqz v17, :cond_9

    .line 227
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;->hasDomainPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 228
    const-string/jumbo v20, "H5JSApiPermission|H5Bridge"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "has oldPermisson = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_9
    if-nez v14, :cond_d

    .line 233
    invoke-interface {v8}, Liny;->sendNoRigHtToInvoke()V

    .line 234
    const-string/jumbo v20, "H5JSApiPermission|H5Bridge"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, " \u63a5\u53e3\uff1a"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " \u6ca1\u6709\u6743\u9650 \u9875\u9762:>>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5    # "appId":Ljava/lang/String;
    .end local v8    # "context":Liny;
    .end local v10    # "h5Page":Liop;
    .end local v11    # "isH5Page":Z
    .end local v12    # "jsCallData":Liol;
    .end local v14    # "oldPermission":Z
    .end local v17    # "provider":Lcom/alipay/mobile/nebula/provider/H5JSApiPermissionProvider;
    .end local v18    # "shouldInterceptJSApiCallFromTiny":I
    .end local v19    # "url":Ljava/lang/String;
    :cond_a
    move-object/from16 v20, v15

    .line 5072
    goto/16 :goto_1

    .line 207
    .restart local v11    # "isH5Page":Z
    .restart local v12    # "jsCallData":Liol;
    :cond_b
    new-instance v8, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9, v4}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;-><init>(Linx;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v8    # "context":Liny;
    goto/16 :goto_2

    .line 238
    .restart local v5    # "appId":Ljava/lang/String;
    .restart local v10    # "h5Page":Liop;
    .restart local v18    # "shouldInterceptJSApiCallFromTiny":I
    .restart local v19    # "url":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 240
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 241
    const-string/jumbo v20, "H5BridgeImpl"

    const-string/jumbo v21, "no permissionfile or in whiteJsApiJsonArray"

    invoke-static/range {v20 .. v21}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v5    # "appId":Ljava/lang/String;
    .end local v10    # "h5Page":Liop;
    .end local v18    # "shouldInterceptJSApiCallFromTiny":I
    .end local v19    # "url":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    goto/16 :goto_0
.end method

.method private executeWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 40
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 294
    .local v22, "executeWebTime":J
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 9113
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 10065
    .local v9, "eventId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 10121
    .local v8, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 10129
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->g:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 10137
    .local v39, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->f:Z

    move/from16 v30, v0

    .line 305
    .local v30, "keep":Z
    new-instance v27, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v27 .. v27}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 306
    .local v27, "jo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "clientId"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v4, "func"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v4, "param"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v4, "msgType"

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v4, "keepCallback"

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v31

    .line 313
    .local v31, "message":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 315
    .local v28, "joMsg":Ljava/lang/String;
    const-string/jumbo v38, "AlipayJSBridge._invokeJS("

    .line 316
    .local v38, "start":Ljava/lang/String;
    const-string/jumbo v21, ")"

    .line 317
    .local v21, "end":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 319
    .local v26, "javascript":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;-><init>(Liop;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5BridgeRunnable;->run()V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 324
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    if-eqz v4, :cond_4

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    .local v12, "appId":Ljava/lang/String;
    const/16 v25, 0x0

    .line 328
    .local v25, "hasPermissionFile":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 329
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v4, v12, v5}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Liop;)Z

    move-result v25

    .line 332
    :cond_3
    if-eqz v25, :cond_4

    .line 333
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;ZLiop;)Z

    move-result v37

    .line 336
    .local v37, "result":Z
    if-nez v37, :cond_4

    sget-object v4, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->WHITE_EVENT_LIST:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    .line 339
    .local v36, "poolEvent":Z
    if-eqz v36, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lioa;

    .line 341
    .local v17, "callback":Lioa;
    if-eqz v17, :cond_0

    .line 342
    new-instance v16, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 343
    .local v16, "callParam":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "prevent"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lioa;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 345
    const-string/jumbo v4, "H5BridgeImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " H5 callback for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v12    # "appId":Ljava/lang/String;
    .end local v16    # "callParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "callback":Lioa;
    .end local v25    # "hasPermissionFile":Z
    .end local v36    # "poolEvent":Z
    .end local v37    # "result":Z
    :cond_4
    :try_start_0
    const-string/jumbo v4, "native_"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v30, :cond_5

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 358
    .local v32, "nowTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v18, v32, v4

    .line 359
    .local v18, "cost":J
    sub-long v34, v32, v22

    .line 360
    .local v34, "parseEventTime":J
    const-string/jumbo v4, "H5BridgeImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " js_native_is cost time "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " executeWebTime:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getPageData()Lior;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getPageData()Lior;

    move-result-object v4

    invoke-virtual {v4, v9}, Lior;->m(Ljava/lang/String;)Liol;

    move-result-object v29

    .line 363
    .local v29, "jsCallData":Liol;
    if-eqz v29, :cond_5

    .line 11034
    move-wide/from16 v0, v18

    move-object/from16 v2, v29

    iput-wide v0, v2, Liol;->b:J

    .line 369
    .end local v18    # "cost":J
    .end local v29    # "jsCallData":Liol;
    .end local v32    # "nowTime":J
    .end local v34    # "parseEventTime":J
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->fixJson(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 371
    .local v24, "fix":Z
    if-nez v24, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "javascript:(function(){if(typeof AlipayJSBridge === \'object\'){"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}})();"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v4, "H5BridgeImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "jsapi rep:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 379
    .end local v24    # "fix":Z
    :catch_0
    move-exception v20

    .line 380
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5BridgeImpl"

    const-string/jumbo v5, "loadUrl exception"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private fixJson(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "javascript"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->apiWhiteParseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string/jumbo v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initChart()V
    .locals 9

    .prologue
    .line 418
    const-string/jumbo v6, "h5_Whitespace"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 420
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 421
    .local v5, "whiteChartAppList":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 422
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->appId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "apiValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 424
    const-string/jumbo v6, "\\|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->apiWhiteParseList:Ljava/util/List;

    .line 425
    const-string/jumbo v6, "whitespace_code"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "codeValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 427
    const-string/jumbo v6, "\\|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    .local v3, "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->whiteCode:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    .end local v0    # "apiValue":Ljava/lang/String;
    .end local v1    # "codeValue":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "whiteChartAppList":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private postNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .line 2049
    iget-boolean v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->i:Z

    .line 127
    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lioe;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->executeNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private postWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    const-string/jumbo v2, "h5_postWebOnUi"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->executeWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5BridgeImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 278
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;ZLiop;)Z
    .locals 6
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "h5BridgeContext"    # Liny;
    .param p4, "event"    # Z
    .param p5, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 442
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->setPermission(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;ZLiop;)Z

    move-result v0

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    .line 100
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callLog:Ljava/util/Map;

    .line 104
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    .line 105
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    .line 106
    return-void
.end method

.method public sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5CallBack"    # Lioa;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 539
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, p1, v0, p3}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 544
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0
.end method

.method public sendDataWarpToWebWithWorkId(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lioa;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "workId"    # Ljava/lang/String;
    .param p4, "h5CallBack"    # Lioa;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 552
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWebWithWork(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lioa;)V

    .line 557
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWebWithWork(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lioa;)V

    goto :goto_0
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->postNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0
.end method

.method public sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 1
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->postNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0
.end method

.method public sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->postWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lioa;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWebWithWork(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lioa;)V

    .line 452
    return-void
.end method

.method public sendToWebWithWork(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lioa;)V
    .locals 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "workId"    # Ljava/lang/String;
    .param p4, "callback"    # Lioa;

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->released:Z

    if-eqz v14, :cond_0

    .line 523
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 11202
    .local v2, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 11217
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 459
    const-string/jumbo v14, "call"

    .line 11222
    iput-object v14, v2, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 459
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v6

    .line 461
    .local v6, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    if-eqz p4, :cond_1

    .line 12113
    iget-object v3, v6, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 463
    .local v3, "clientId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->callPool:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v14, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .end local v3    # "clientId":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    if-eqz v14, :cond_5

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v14}, Liop;->getSession()Lipc;

    move-result-object v8

    .line 469
    .local v8, "h5Session":Lipc;
    if-eqz v8, :cond_5

    .line 470
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 471
    invoke-interface {v8}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object p3

    .line 473
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 474
    const-string/jumbo v14, "H5BridgeImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sendToWeb workId "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v7

    .line 476
    .local v7, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v7, :cond_5

    .line 478
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v4, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "appId"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 481
    .local v9, "jo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "func"

    move-object/from16 v0, p1

    invoke-virtual {v9, v14, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    if-eqz p2, :cond_6

    .line 485
    :try_start_1
    const-string/jumbo v14, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 490
    .local v11, "subData":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    if-nez v11, :cond_3

    .line 491
    :try_start_2
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    .end local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 492
    .restart local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_3
    const-string/jumbo v14, "NBPageUrl"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v15}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v14, "param"

    move-object/from16 v0, p2

    invoke-virtual {v9, v14, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->enableViewId()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 497
    const-string/jumbo v14, "viewId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v15}, Liop;->getWebViewId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_4
    :goto_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, "message":Ljava/lang/String;
    const-string/jumbo v14, "message"

    invoke-virtual {v4, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v14, "messageId"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-virtual {v7, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 522
    .end local v4    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v8    # "h5Session":Lipc;
    .end local v9    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 486
    .restart local v4    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v8    # "h5Session":Lipc;
    .restart local v9    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v5

    .line 487
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v14, "H5BridgeImpl"

    const-string/jumbo v15, "data is not a jsonobj "

    invoke-static {v14, v15, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    const/4 v11, 0x0

    .restart local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 501
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 502
    .local v13, "tmpParam":Lcom/alibaba/fastjson/JSONObject;
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 503
    .restart local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "NBPageUrl"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v15}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v14, "data"

    invoke-virtual {v13, v14, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v14, "param"

    invoke-virtual {v9, v14, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->enableViewId()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 507
    const-string/jumbo v14, "viewId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->h5Page:Liop;

    invoke-interface {v15}, Liop;->getWebViewId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 515
    .end local v4    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "subData":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "tmpParam":Lcom/alibaba/fastjson/JSONObject;
    :catch_1
    move-exception v12

    .line 516
    .local v12, "t":Ljava/lang/Throwable;
    const-string/jumbo v14, "H5BridgeImpl"

    const-string/jumbo v15, "catch exception "

    invoke-static {v14, v15, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
