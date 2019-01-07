.class public Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;
.super Lipd;
.source "H5PPDownloadPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PPDownloadPlugin"


# instance fields
.field private PP_DOWNLOAD:Ljava/lang/String;

.field private h5Page:Liop;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lipd;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->h5Page:Liop;

    .line 34
    const-string/jumbo v0, "ppdownload"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->PP_DOWNLOAD:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->h5Page:Liop;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # J

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->sendDownloadEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private handlePPDownload(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 20
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 56
    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v17, v0

    .line 57
    .local v17, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "url"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v3, "fileName"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "fileName":Ljava/lang/String;
    const-string/jumbo v3, "userAgent"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "userAgent":Ljava/lang/String;
    const-string/jumbo v3, "contentDisposition"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v3, "mimeType"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "mimeType":Ljava/lang/String;
    const-string/jumbo v3, "contentLength"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v10

    .line 65
    .local v10, "contentLength":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v18, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 66
    .local v15, "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    const/4 v12, 0x0

    .line 67
    .local v12, "channel":Z
    if-eqz v15, :cond_0

    .line 68
    invoke-interface {v15}, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;->getChannelId()Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "channelId":Ljava/lang/String;
    const-string/jumbo v3, "5136"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 70
    const-string/jumbo v3, "H5PPDownloadPlugin"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "channelId is "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", isGooglePlayChannel "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v13    # "channelId":Ljava/lang/String;
    :cond_0
    move v4, v12

    .line 73
    .local v4, "isGooglePlayChannel":Z
    const-string/jumbo v3, "H5PPDownloadPlugin"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "isGooglePlayChannel "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    .local v2, "onGetQueryResult":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    const-string/jumbo v3, "URGENT"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v14

    .line 117
    .local v14, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->getInstance()Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    move-result-object v16

    .line 118
    .local v16, "h5PPQueryThread":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->h5Page:Liop;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v3, v2, v1}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->setParams(Ljava/lang/String;ILcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;Liop;)V

    .line 119
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method private sendDownloadEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 124
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 125
    .local v0, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v1, "fileName"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v1, "userAgent"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v1, "contentDisposition"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v1, "mimeType"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "contentLength"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->h5Page:Liop;

    const-string/jumbo v2, "h5PageDownload"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 49
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->PP_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->handlePPDownload(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 52
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onInitialize(Liob;)V
    .locals 0
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 38
    check-cast p1, Liop;

    .end local p1    # "coreNode":Liob;
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->h5Page:Liop;

    .line 39
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->PP_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method
