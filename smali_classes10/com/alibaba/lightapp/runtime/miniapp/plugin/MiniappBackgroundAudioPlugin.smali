.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappBackgroundAudioPlugin.java"


# instance fields
.field private a:Lcom/alibaba/doraemon/audio/OnPlayListener;

.field private b:Lcom/alipay/mobile/h5container/api/H5Event;

.field private c:Lhmo;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    .prologue
    .line 28
    .line 10299
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "action_background_audio_top"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10300
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10301
    const-string/jumbo v3, "title"

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10302
    const-string/jumbo v3, "coverUrl"

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "https://img.alicdn.com/tfs/TB1_SbvqOMnBKNjSZFoXXbOSFXa-1221-1221.png"

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10303
    const-string/jumbo v0, "appName"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10304
    const-string/jumbo v0, "appIconUrl"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10305
    const-string/jumbo v0, "originUrl"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10306
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10307
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 28
    return-void

    .line 10301
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->d:Ljava/lang/String;

    goto :goto_0

    .line 10302
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;
    .param p1, "x1"    # I

    .prologue
    .line 28
    .line 11351
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 11352
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 11353
    if-eqz v0, :cond_0

    .line 11354
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 11355
    if-eqz v0, :cond_0

    .line 11356
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 11357
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "onTimeUpdate"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11358
    const-string/jumbo v2, "currentTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11359
    const-string/jumbo v2, "audioManagerEvent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;ILjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    .line 12335
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 12336
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 12337
    if-eqz v0, :cond_0

    .line 12338
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 12339
    if-eqz v0, :cond_0

    .line 12340
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 12341
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "onError"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12342
    const-string/jumbo v2, "errorCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12343
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12344
    const-string/jumbo v2, "audioManagerEvent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    .line 10321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 10322
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    .line 10323
    if-eqz v0, :cond_0

    .line 10324
    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 10325
    if-eqz v0, :cond_0

    .line 10326
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 10327
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10328
    const-string/jumbo v2, "audioManagerEvent"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    .prologue
    .line 11311
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_background_audio_hide"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11312
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 28
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    .prologue
    .line 11316
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_background_audio_stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11317
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-static {}, Lhmo;->a()Lhmo;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 127
    .local v0, "action":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 168
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 127
    :sswitch_0
    const-string/jumbo v4, "playBackgroundAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "pauseBackgroundAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "stopBackgroundAudio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "setBackgroundAudioTitleSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "getBackgroundAudioTitleSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "setBackgroundAudioSrcSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v4, "getBackgroundAudioSrcSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v4, "setBackgroundAudioCoverImgUrlSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v4, "getBackgroundAudioCoverImgUrlSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v4, "getBackgroundAudioDurationSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v4, "getBackgroundAudioCurrentTimeSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v4, "setBackgroundAudioSeekPosition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v4, "getBackgroundAudioStatusSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    .line 1172
    :pswitch_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1173
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 1174
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->g()V

    goto/16 :goto_1

    .line 1276
    :pswitch_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1277
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 1278
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->e()V

    goto/16 :goto_1

    .line 1283
    :pswitch_2
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1284
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_1

    .line 1285
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->d()V

    goto/16 :goto_1

    .line 3121
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2198
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    :goto_2
    invoke-static {p2}, Lhom;->b(Liny;)V

    goto/16 :goto_1

    .line 2199
    :catch_0
    move-exception v1

    .line 2200
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 3190
    :pswitch_4
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3191
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 3209
    :pswitch_5
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 3211
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v3

    .line 3212
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 3213
    if-eqz v1, :cond_2

    .line 3214
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 3215
    if-eqz v1, :cond_2

    .line 3216
    iget-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->f:Ljava/lang/String;

    .line 3217
    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->g:Ljava/lang/String;

    .line 4121
    :cond_2
    :try_start_1
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 3223
    const-string/jumbo v3, "src"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3224
    const-string/jumbo v4, "home"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->h:Ljava/lang/String;

    .line 3225
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3226
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    if-eqz v1, :cond_3

    .line 3227
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    const/4 v4, 0x1

    .line 5094
    iput-boolean v4, v1, Lhmo;->e:Z

    .line 3228
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lhmo;->a(Z)V

    .line 3229
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a:Lcom/alibaba/doraemon/audio/OnPlayListener;

    invoke-virtual {v1, v3, v4}, Lhmo;->a(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3235
    :cond_3
    :goto_3
    invoke-static {p2}, Lhom;->b(Liny;)V

    goto/16 :goto_1

    .line 3232
    :catch_1
    move-exception v1

    .line 3233
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 5239
    :pswitch_6
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    .line 6128
    iget-object v1, v1, Lhmo;->c:Ljava/lang/String;

    .line 5240
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5241
    const-string/jumbo v4, "src"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5242
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 7121
    :pswitch_7
    :try_start_2
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 6268
    const-string/jumbo v3, "coverImgUrl"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6272
    :goto_4
    invoke-static {p2}, Lhom;->b(Liny;)V

    goto/16 :goto_1

    .line 6269
    :catch_2
    move-exception v1

    .line 6270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 7260
    :pswitch_8
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 7261
    const-string/jumbo v3, "coverImgUrl"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7262
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 8246
    :pswitch_9
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->b()I

    move-result v1

    .line 8247
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8248
    const-string/jumbo v4, "duration"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8249
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 8253
    :pswitch_a
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Lhmo;->c()I

    move-result v1

    .line 8254
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8255
    const-string/jumbo v4, "currentTime"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8256
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 10121
    :pswitch_b
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 9181
    :try_start_3
    const-string/jumbo v3, "position"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 9182
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Lhmo;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 9183
    :catch_3
    move-exception v1

    .line 9184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 10290
    :pswitch_c
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    if-eqz v3, :cond_1

    .line 10291
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c:Lhmo;

    invoke-virtual {v3}, Lhmo;->i()Z

    move-result v3

    .line 10292
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 10293
    const-string/jumbo v5, "paused"

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10294
    invoke-interface {p2, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_1

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76185ad3 -> :sswitch_6
        -0x72bd37d1 -> :sswitch_a
        -0x43d4bec7 -> :sswitch_5
        -0x778f2d3 -> :sswitch_3
        0x27964174 -> :sswitch_0
        0x2cfd7081 -> :sswitch_9
        0x304dcee6 -> :sswitch_2
        0x47b0785f -> :sswitch_c
        0x48ba4421 -> :sswitch_4
        0x4df8d718 -> :sswitch_7
        0x657b5d67 -> :sswitch_b
        0x67158a72 -> :sswitch_1
        0x67dc070c -> :sswitch_8
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
    .end packed-switch
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 61
    const-string/jumbo v0, "playBackgroundAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "pauseBackgroundAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "stopBackgroundAudio"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "setBackgroundAudioTitleSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "getBackgroundAudioTitleSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "setBackgroundAudioSrcSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "getBackgroundAudioSrcSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "setBackgroundAudioCoverImgUrlSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "getBackgroundAudioCoverImgUrlSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "getBackgroundAudioDurationSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "getBackgroundAudioCurrentTimeSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "setBackgroundAudioSeekPosition"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "getBackgroundAudioStatusSync"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 121
    return-void
.end method
