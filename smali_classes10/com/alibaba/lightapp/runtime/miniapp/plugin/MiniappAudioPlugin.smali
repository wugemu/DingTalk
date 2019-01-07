.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappAudioPlugin.java"


# instance fields
.field private a:Lcom/alibaba/doraemon/audio/OnPlayListener;

.field private b:Lcom/alipay/mobile/h5container/api/H5Event;

.field private c:Lhmo;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(I)D
    .locals 4
    .param p0, "ms"    # I

    .prologue
    .line 458
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    int-to-double v0, p0

    :goto_0
    return-wide v0

    :cond_0
    int-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;)Lcom/alibaba/doraemon/audio/OnPlayListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a:Lcom/alibaba/doraemon/audio/OnPlayListener;

    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 392
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->d:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    .line 11162
    invoke-virtual {v0}, Lhmo;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11163
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lhmo;->b(I)V

    .line 11165
    :cond_0
    invoke-virtual {v0}, Lhmo;->j()V

    .line 11166
    iput-boolean v2, v0, Lhmo;->e:Z

    .line 11167
    iput-boolean v2, v0, Lhmo;->f:Z

    .line 11169
    iput-object v3, v0, Lhmo;->c:Ljava/lang/String;

    .line 11170
    iput-object v3, v0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 396
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;
    .param p1, "x1"    # I

    .prologue
    .line 27
    .line 11439
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 11440
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 11441
    if-eqz v0, :cond_0

    .line 11442
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 11443
    if-eqz v0, :cond_0

    .line 11444
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 11445
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "ontimeupdate"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11446
    const-string/jumbo v2, "currentTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11447
    const-string/jumbo v2, "innerAudioManagerEvent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 27
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;ILjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    .line 12423
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 12424
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 12425
    if-eqz v0, :cond_0

    .line 12426
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 12427
    if-eqz v0, :cond_0

    .line 12428
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 12429
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "onerror"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12430
    const-string/jumbo v2, "errorCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12431
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12432
    const-string/jumbo v2, "innerAudioManagerEvent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 27
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    .line 11409
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 11410
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 11411
    if-eqz v0, :cond_0

    .line 11412
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 11413
    if-eqz v0, :cond_0

    .line 11414
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 11415
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11416
    const-string/jumbo v2, "innerAudioManagerEvent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 27
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;)Lhmo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 154
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 156
    .local v0, "action":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 206
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 156
    :sswitch_0
    const-string/jumbo v4, "setAudioSrcSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "getAudioSrcSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "setAudioAutoPlaySync"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "getAudioAutoPlaySync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "setAudioLoopSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "getAudioLoopSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v4, "getAudioDurationSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v4, "getAudioCurrentTimeSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v4, "getAudioPausedSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v4, "playAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "pauseAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "stopAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "seekAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v4, "destroyAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    .line 3121
    :pswitch_0
    :try_start_0
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2218
    const-string/jumbo v4, "src"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2219
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2220
    const-string/jumbo v3, "innerAudioManagerEvent"

    const-string/jumbo v4, "onerror"

    const/4 v6, 0x2

    invoke-static {p1, v3, v4, v6}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2246
    :catch_0
    move-exception v3

    .line 2247
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2248
    const-string/jumbo v4, "innerAudioManagerEvent"

    const-string/jumbo v6, "onerror"

    invoke-static {p1, v4, v6, v5}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2249
    const-string/jumbo v4, "MiniappAudioPlugin"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setSrc error, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    :goto_2
    invoke-static {p2}, Lhom;->b(Liny;)V

    goto/16 :goto_1

    .line 2223
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-nez v4, :cond_3

    .line 2224
    const-string/jumbo v3, "innerAudioManagerEvent"

    const-string/jumbo v4, "onerror"

    const/4 v6, 0x3

    invoke-static {p1, v3, v4, v6}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2225
    const-string/jumbo v3, "MiniappAudioPlugin"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "impossible! mBackgroundAudioManager is null!"

    aput-object v7, v4, v6

    .line 4098
    const-string/jumbo v6, "mini_api"

    invoke-static {v6, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2228
    :cond_3
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2229
    const-string/jumbo v4, "MiniappAudioPlugin"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v6, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;

    invoke-direct {v6, p0, v3, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2245
    :goto_3
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->d:Ljava/lang/String;

    goto :goto_2

    .line 2243
    :cond_4
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-virtual {v4, v3, v6}, Lhmo;->a(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 4255
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 4258
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4259
    const-string/jumbo v3, "src"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4260
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 5121
    :pswitch_2
    :try_start_2
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 4292
    const-string/jumbo v3, "autoplay"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4293
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v3, :cond_5

    .line 4294
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    .line 6094
    iput-boolean v1, v3, Lhmo;->e:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 4299
    :cond_5
    :goto_4
    invoke-static {p2}, Lhom;->b(Liny;)V

    goto/16 :goto_1

    .line 4296
    :catch_1
    move-exception v1

    .line 4297
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 6303
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 6307
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    .line 7098
    iget-boolean v1, v1, Lhmo;->e:Z

    .line 6308
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 6309
    const-string/jumbo v4, "autoplay"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6310
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 6311
    :catch_2
    move-exception v1

    .line 6312
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 8121
    :pswitch_4
    :try_start_4
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 7319
    const-string/jumbo v3, "loop"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 7320
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v3, :cond_6

    .line 7321
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v3, v1}, Lhmo;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 7326
    :cond_6
    :goto_5
    invoke-static {p2}, Lhom;->b(Liny;)V

    goto/16 :goto_1

    .line 7323
    :catch_3
    move-exception v1

    .line 7324
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 8330
    :pswitch_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 8334
    :try_start_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    .line 9109
    iget-boolean v1, v1, Lhmo;->f:Z

    .line 8335
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8336
    const-string/jumbo v4, "loop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8337
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 8338
    :catch_4
    move-exception v1

    .line 8339
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 9344
    :pswitch_6
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 9347
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->b()I

    move-result v1

    .line 9348
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 9349
    const-string/jumbo v4, "duration"

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9350
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 9354
    :pswitch_7
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 9357
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->c()I

    move-result v1

    .line 9358
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 9359
    const-string/jumbo v4, "currentTime"

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9360
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 9399
    :pswitch_8
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v3, :cond_1

    .line 9402
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v3}, Lhmo;->i()Z

    move-result v3

    .line 9403
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 9404
    const-string/jumbo v5, "paused"

    if-nez v3, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9405
    invoke-interface {p2, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 10364
    :pswitch_9
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 10365
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->g()V

    goto/16 :goto_1

    .line 10370
    :pswitch_a
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 10371
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->e()V

    goto/16 :goto_1

    .line 10376
    :pswitch_b
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 10377
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->d()V

    goto/16 :goto_1

    .line 11121
    :pswitch_c
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 10384
    :try_start_6
    const-string/jumbo v3, "position"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 10385
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v1, v3}, Lhmo;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 10386
    :catch_5
    move-exception v1

    .line 10387
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 203
    :pswitch_d
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a()V

    goto/16 :goto_1

    .line 156
    :sswitch_data_0
    .sparse-switch
        -0x7eaf28d7 -> :sswitch_8
        -0x720b93a1 -> :sswitch_1
        -0x718efefe -> :sswitch_9
        -0x6cdd1702 -> :sswitch_3
        -0x50020804 -> :sswitch_d
        -0x45d8a771 -> :sswitch_6
        -0x3bc29895 -> :sswitch_0
        -0x2f401661 -> :sswitch_5
        -0x1309c29f -> :sswitch_7
        -0x4763080 -> :sswitch_a
        0x2fcb283e -> :sswitch_c
        0x5f8354f4 -> :sswitch_b
        0x63965013 -> :sswitch_4
        0x6eb8f572 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onInitialize(Liob;)V
    .locals 2
    .param p1, "coreNode"    # Liob;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onInitialize(Liob;)V

    .line 72
    invoke-static {}, Lhmo;->a()Lhmo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    .line 1094
    iput-boolean v1, v0, Lhmo;->e:Z

    .line 75
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->c:Lhmo;

    invoke-virtual {v0, v1}, Lhmo;->a(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 82
    const-string/jumbo v0, "setAudioSrcSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "getAudioSrcSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "setAudioAutoPlaySync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "getAudioAutoPlaySync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "setAudioLoopSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "getAudioLoopSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "getAudioDurationSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "getAudioCurrentTimeSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "getAudioPausedSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "playAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "pauseAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "stopAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "seekAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "destroyAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 150
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a()V

    .line 212
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onRelease()V

    .line 213
    return-void
.end method
