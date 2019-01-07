.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
.super Lipd;
.source "ChooseImagePlugin.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Liny;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "camera"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lipd;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # I

    .prologue
    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/app/Activity;IZ)Landroid/net/Uri;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "frontCamera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    .line 357
    :cond_0
    invoke-static {}, Lhcs;->a()Z

    move-result v7

    if-nez v7, :cond_1

    .line 358
    sget v7, Lhdn$k;->sdcard_unavailable:I

    invoke-static {v7}, Lcms;->a(I)V

    .line 359
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "openCamera"

    const-string/jumbo v9, "sdcard unavailable"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lhcs;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 369
    .local v6, "parentFile":Ljava/io/File;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 370
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 373
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 374
    .local v0, "captureUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v4, "intent":Landroid/content/Intent;
    move-object v5, v0

    .line 376
    .local v5, "outputUrl":Landroid/net/Uri;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_3

    .line 377
    invoke-static {p1}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v3}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 379
    :cond_3
    const-string/jumbo v7, "output"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    if-eqz p3, :cond_4

    .line 381
    const-string/jumbo v7, "android.intent.extras.CAMERA_FACING"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {p1, v4, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 385
    const/4 v7, 0x2

    iput v7, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v0    # "captureUri":Landroid/net/Uri;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "outputUrl":Landroid/net/Uri;
    .end local v6    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "openCamera"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "start err:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    .line 4185
    invoke-static {p1}, Lhoj;->a(Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 4189
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;)Liny;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Liny;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->g:Liny;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 399
    :cond_0
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b:Landroid/content/BroadcastReceiver;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    if-eqz v0, :cond_2

    .line 402
    invoke-static {}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->remove(Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;)V

    .line 403
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .line 405
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;Landroid/content/Intent;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 64
    .line 5462
    const-string/jumbo v0, "choose_picture_ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5463
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5464
    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;Ljava/util/List;)V

    :goto_0
    return-void

    .line 5466
    :cond_0
    const/16 v0, 0xb

    const-string/jumbo v1, "no photo selected"

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Liny;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 4471
    if-nez p2, :cond_0

    .line 4472
    const/16 v0, 0xb

    const-string/jumbo v1, "no photo selected"

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;ILjava/lang/String;)V

    .line 4473
    :goto_0
    return-void

    .line 4475
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4476
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4477
    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;I)V
    .locals 13
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "multiple"

    if-le p2, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    :goto_1
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v4, "nav2Image"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "params: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string/jumbo v1, "multiple"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 2231
    :goto_2
    const-string/jumbo v4, "compression"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 2232
    :goto_3
    const-string/jumbo v5, "crop"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    .line 2236
    :goto_4
    const-string/jumbo v6, "origin"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v2

    .line 2237
    :goto_5
    const-string/jumbo v7, "cameraDevice"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_7

    move v7, v2

    .line 2238
    :goto_6
    const-string/jumbo v8, "quality"

    const/16 v9, 0x55

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 2241
    const-string/jumbo v9, "cropWidth"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 2242
    const-string/jumbo v10, "cropHeight"

    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 2244
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2245
    const-string/jumbo v12, "send_origin_picture"

    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2246
    const-string/jumbo v6, "album_single"

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v11, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2247
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v11, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2248
    const-string/jumbo v1, "album_choose_num"

    invoke-virtual {v11, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2249
    const-string/jumbo v1, "album_need_pre_compress"

    invoke-virtual {v11, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2250
    const-string/jumbo v1, "album_need_pre_decode"

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2251
    const-string/jumbo v1, "front_camera"

    invoke-virtual {v11, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2252
    const-string/jumbo v1, "outputX"

    invoke-virtual {v11, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2253
    const-string/jumbo v1, "outputY"

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2254
    const-string/jumbo v1, "album_compress_quality"

    invoke-virtual {v11, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2258
    :try_start_1
    const-string/jumbo v1, "stickers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2259
    if-eqz v1, :cond_1

    .line 2260
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2261
    const-string/jumbo v3, "dateWeather"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2262
    const-string/jumbo v4, "username"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2263
    const-string/jumbo v5, "address"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2264
    const-string/jumbo v5, "time"

    invoke-virtual {v11, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string/jumbo v2, "dateWeather"

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const-string/jumbo v2, "username"

    invoke-virtual {v11, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    const-string/jumbo v2, "address"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2276
    :cond_1
    :goto_7
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    .line 2277
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2276
    invoke-virtual {v1, v2, v3, v11}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2278
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d:I

    .line 151
    return-void

    :cond_2
    move v1, v3

    .line 146
    goto/16 :goto_0

    .line 148
    :catch_0
    move-exception v1

    const-string/jumbo v1, "ChooseImagePlugin"

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "fail to put multiple in album json"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 2230
    goto/16 :goto_2

    :cond_4
    move v4, v3

    .line 2231
    goto/16 :goto_3

    :cond_5
    move v5, v3

    .line 2232
    goto/16 :goto_4

    :cond_6
    move v6, v3

    .line 2236
    goto/16 :goto_5

    :cond_7
    move v7, v3

    .line 2237
    goto/16 :goto_6

    .line 2270
    :catch_1
    move-exception v1

    .line 2271
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "nav2Image"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse params err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 15
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->g:Liny;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "event : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1121
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 107
    .local v1, "args":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 108
    .local v3, "defaultArr":Lcom/alibaba/fastjson/JSONArray;
    sget-object v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 110
    const-string/jumbo v5, "sourceType"

    invoke-static {v1, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 114
    .local v4, "sourceType":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v5, "count"

    const/16 v6, 0x9

    invoke-static {v1, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 115
    .local v2, "count":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->e:Z

    .line 117
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 1135
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 120
    const-string/jumbo v5, "album"

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;I)V

    goto :goto_0

    .line 122
    :cond_2
    const-string/jumbo v5, "camera"

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1139
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1287
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "nav2Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "params: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->j:Z

    .line 1289
    const-string/jumbo v5, "cameraDevice"

    const/4 v6, 0x0

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    .line 1290
    :goto_1
    const-string/jumbo v6, "spaceId"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->f:Ljava/lang/String;

    .line 1294
    iget-boolean v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->j:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1295
    const/4 v5, 0x3

    const-string/jumbo v6, "spaceId can\'t be null"

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;ILjava/lang/String;)V

    goto :goto_0

    .line 1289
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1299
    :cond_4
    const/4 v10, 0x0

    .line 1300
    const/4 v9, 0x0

    .line 1301
    const/4 v8, 0x0

    .line 1302
    const/4 v7, 0x0

    .line 1303
    const/4 v6, 0x0

    .line 1306
    const-string/jumbo v12, "stickers"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 1307
    if-eqz v11, :cond_5

    .line 1308
    const-string/jumbo v6, "time"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1309
    const-string/jumbo v6, "dateWeather"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1310
    const-string/jumbo v6, "username"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1311
    const-string/jumbo v6, "address"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1312
    const-string/jumbo v6, "i18nlogo"

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_6

    const/4 v6, 0x1

    .line 1317
    :cond_5
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1319
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Landroid/app/Activity;IZ)Landroid/net/Uri;

    move-result-object v5

    .line 1320
    if-nez v5, :cond_7

    const/4 v5, 0x0

    :goto_3
    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->h:Ljava/lang/String;

    .line 1321
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->h:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1322
    const/4 v5, 0x3

    const-string/jumbo v6, "open camera fail"

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1312
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 1320
    :cond_7
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1326
    :cond_8
    invoke-static {}, Lhcs;->a()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1327
    sget v5, Lhdn$k;->sdcard_unavailable:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 1328
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "openCamera"

    const-string/jumbo v7, "sdcard unavailable"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v13

    const-class v14, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v11, v12}, Lcms;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1335
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v12

    const-class v13, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1337
    const-string/jumbo v12, "time"

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string/jumbo v10, "username"

    invoke-virtual {v11, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const-string/jumbo v8, "address"

    invoke-virtual {v11, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string/jumbo v7, "dateWeather"

    invoke-virtual {v11, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string/jumbo v7, "front_camera"

    invoke-virtual {v11, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1342
    const-string/jumbo v5, "i18nlogo"

    invoke-virtual {v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1344
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v11, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1346
    const/4 v5, 0x2

    iput v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->d:I

    goto/16 :goto_0

    .line 125
    :cond_a
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid  param : sourceType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 126
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Liny;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_b
    const/4 v5, 0x1

    const-string/jumbo v6, "need sourceType param"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Liny;->sendError(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Liny;Ljava/util/List;)V
    .locals 2
    .param p1, "bridgeContext"    # Liny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liny;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    .local p2, "photoPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 201
    const/16 v0, 0xb

    const-string/jumbo v1, "no photo selected"

    invoke-interface {p1, v0, v1}, Liny;->sendError(ILjava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Landroid/content/Context;)V

    .line 220
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "ChooseImagePlugin"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Ljava/util/List;Liny;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)Liny;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->g:Liny;

    return-object v0
.end method


# virtual methods
.method protected final a(Liny;ILjava/lang/String;)V
    .locals 1
    .param p1, "bridgeContext"    # Liny;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-interface {p1, p2, p3}, Liny;->sendError(ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Landroid/content/Context;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->i:Landroid/content/Context;

    .line 197
    return-void
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    .line 3065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 3081
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 164
    instance-of v3, v3, Liop;

    if-nez v3, :cond_0

    .line 165
    const-string/jumbo v3, "ChooseImagePlugin"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "not from h5 page."

    aput-object v5, v4, v2

    .line 3098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 3178
    :goto_0
    return v1

    .line 169
    :cond_0
    const-string/jumbo v3, "ChooseImagePlugin"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActionCalled:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3174
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->i:Landroid/content/Context;

    .line 3175
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v3

    .line 3413
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    if-nez v4, :cond_1

    .line 3414
    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .line 3430
    invoke-static {}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->c:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->put(Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;)V

    .line 3432
    :cond_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 3433
    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;)V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b:Landroid/content/BroadcastReceiver;

    .line 3454
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 3455
    const-string/jumbo v5, "com.workapp.choose.pictire.from.album"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3456
    const-string/jumbo v5, "com.workapp.choose.picture.from.album.cancel"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3457
    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v4}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3176
    :cond_2
    const-string/jumbo v3, "chooseImage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3177
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/ChooseImagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 4
    .param p1, "filter"    # Liof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 155
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "chooseImage"

    aput-object v2, v1, v3

    .local v1, "actions":[Ljava/lang/String;
    move v2, v3

    .line 156
    :goto_0
    if-gtz v2, :cond_0

    aget-object v0, v1, v3

    .line 157
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0}, Lipd;->onRelease()V

    .line 410
    return-void
.end method
