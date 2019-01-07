.class final Lcom/taobao/artc/api/ArtcMediaClerk$1;
.super Ljava/lang/Object;
.source "ArtcMediaClerk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/api/ArtcMediaClerk;->isMediaGuaranteed(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cfg:Lcom/taobao/artc/api/ArtcConfig;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

.field final synthetic val$model:Ljava/lang/String;

.field final synthetic val$vi:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/taobao/artc/api/ArtcConfig;Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$model:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iput-object p3, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    iput-object p4, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$vi:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    iput-object p5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$model:Ljava/lang/String;

    .line 132
    .local v1, "mdel":Ljava/lang/String;
    new-instance v5, Ljava/util/Timer;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/Timer;-><init>(Z)V

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$002(Ljava/util/Timer;)Ljava/util/Timer;

    .line 133
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$102(Lcom/taobao/artc/api/ArtcConfig;)Lcom/taobao/artc/api/ArtcConfig;

    .line 134
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$handler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$202(Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;)Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .line 135
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$vi:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$302(Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;)Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    .line 136
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$ctx:Landroid/content/Context;

    sput-object v5, Lcom/taobao/artc/internal/ArtcGlobal;->context:Landroid/content/Context;

    .line 137
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$ctx:Landroid/content/Context;

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-static {v5, v6}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$400(Landroid/content/Context;Lcom/taobao/artc/api/ArtcConfig;)V

    .line 139
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 140
    .local v2, "root":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 141
    .local v0, "dataItem":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 142
    .local v4, "userItem":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "appkey"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v6}, Lcom/taobao/artc/api/ArtcConfig;->appkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v5, "userId"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v6}, Lcom/taobao/artc/api/ArtcConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v5, "deviceId"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v5, "carriers"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcConfig;->carriers:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v5, "networkType"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcConfig;->networkType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$model:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 148
    const-string/jumbo v5, "model"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v1, v5, Lcom/taobao/artc/api/ArtcConfig;->model:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$model:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    :goto_0
    const-string/jumbo v5, "board"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcConfig;->board:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v5, "platform"

    const-string/jumbo v6, "android"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v5, "os"

    const-string/jumbo v6, "android"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v5, "osVersion"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcConfig;->osVersion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v5, "userInfo"

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v5, "width"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$vi:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;->i_width:[I

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v5, "api"

    const-string/jumbo v6, "getSdkConfig"

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v5, "serviceName"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v6}, Lcom/taobao/artc/api/ArtcConfig;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v5, "sdkVersion"

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v5, "seqId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$600()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v5}, Lcom/taobao/artc/api/ArtcConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v5, v5, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    const-string/jumbo v5, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const-string/jumbo v5, "jartcjartcArtcMediaClerk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isMediaGuaranteed, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isMediaGuaranteed, width: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$vi:Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    iget-object v6, v6, Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;->i_width:[I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", model: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$1000(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$cfg:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v5}, Lcom/taobao/artc/api/ArtcConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "artcconfig"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->compress([B)[B

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/accs/ArtcAccsHandler;->sendData(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/taobao/artc/api/ArtcMediaClerk;->accs_data_id:Ljava/lang/String;

    .line 179
    new-instance v3, Lcom/taobao/artc/api/ArtcMediaClerk$1$1;

    invoke-direct {v3, p0}, Lcom/taobao/artc/api/ArtcMediaClerk$1$1;-><init>(Lcom/taobao/artc/api/ArtcMediaClerk$1;)V

    .line 198
    .local v3, "task":Ljava/util/TimerTask;
    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$000()Ljava/util/Timer;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v3, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 199
    return-void

    .line 152
    .end local v3    # "task":Ljava/util/TimerTask;
    :cond_0
    const-string/jumbo v5, "model"

    iget-object v6, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$model:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v5, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1;->val$model:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
