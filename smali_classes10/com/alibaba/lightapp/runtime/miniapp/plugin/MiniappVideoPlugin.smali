.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
.super Lipd;
.source "MiniappVideoPlugin.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    .line 4220
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v0

    .line 4221
    sget-object v1, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->VIDEO:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v0

    .line 4222
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b:Landroid/content/BroadcastReceiver;

    .line 387
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
    .param p1, "x1"    # Liny;

    .prologue
    .line 58
    .line 3288
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    if-nez v0, :cond_0

    .line 3289
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .line 3328
    invoke-static {}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->put(Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # I

    .prologue
    .line 58
    .line 2400
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2401
    const-string/jumbo v1, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    packed-switch p2, :pswitch_data_0

    .line 2413
    const-string/jumbo v1, "error"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "error unknown"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    :goto_0
    if-eqz p1, :cond_0

    .line 2417
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 58
    :cond_0
    return-void

    .line 2404
    :pswitch_0
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "user cancel"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2407
    :pswitch_1
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "file not found"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2410
    :pswitch_2
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "save failed"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2402
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 58
    .line 5193
    const-wide/16 v2, 0x0

    .line 5196
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5198
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 5199
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 5201
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5202
    if-eqz v4, :cond_0

    .line 5203
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5204
    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 5211
    :goto_0
    const-string/jumbo v4, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5212
    const-string/jumbo v2, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5213
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void

    .line 5207
    :catch_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    .line 5208
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5209
    const-string/jumbo v4, "MiniappVideoPlugin"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "get video info error, filePath ="

    aput-object v6, v5, v0

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5207
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    :try_start_0
    const-string/jumbo v3, "sourceType"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 228
    .local v1, "sourceType":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 229
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "album"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget v5, Lhdn$k;->h5_gallery_photo:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 242
    .end local v1    # "sourceType":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 232
    .restart local v1    # "sourceType":Lcom/alibaba/fastjson/JSONArray;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "camera"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget v5, Lhdn$k;->dt_lightapp_upload_menu_take_video:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1    # "sourceType":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lhdn$k;->dt_lightapp_upload_menu_take_video:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lhdn$k;->h5_gallery_photo:I

    .line 242
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->remove(Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a:Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;
    .param p1, "x1"    # Liny;

    .prologue
    .line 58
    .line 3333
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 3334
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Liny;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b:Landroid/content/BroadcastReceiver;

    .line 3372
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3373
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3374
    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3375
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 58
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 161
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v5

    .line 165
    :cond_1
    :try_start_0
    const-string/jumbo v3, "video/mp4"

    .line 166
    .local v3, "mimeType":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v1, "localContentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "_data"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v6, "description"

    const-string/jumbo v7, "save video ---"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v6, "mime_type"

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v6, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    .local v0, "localContentResolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 173
    .local v2, "localUri":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v5, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "localContentResolver":Landroid/content/ContentResolver;
    .end local v1    # "localContentValues":Landroid/content/ContentValues;
    .end local v2    # "localUri":Landroid/net/Uri;
    .end local v3    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 176
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    .line 1121
    .local v2, "activity":Landroid/app/Activity;
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 93
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    if-nez v7, :cond_2

    .line 94
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    goto :goto_0

    .line 2065
    :cond_2
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 97
    .local v6, "action":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    goto :goto_0

    .line 97
    :sswitch_0
    const-string/jumbo v1, "chooseVideo"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "saveVideoToPhotosAlbum"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v9

    goto :goto_1

    .line 99
    :pswitch_0
    const-string/jumbo v0, "maxDuration"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    .line 101
    .local v4, "maxDurationSecs":I
    const/16 v0, 0x3c

    if-le v4, v0, :cond_5

    .line 102
    const/16 v4, 0x3c

    .line 106
    :cond_4
    :goto_2
    invoke-static {v7, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 2246
    .local v3, "menus":[Ljava/lang/String;
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Landroid/app/Activity;[Ljava/lang/String;ILiny;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v9

    .line 108
    goto :goto_0

    .line 103
    .end local v3    # "menus":[Ljava/lang/String;
    :cond_5
    const/4 v0, 0x5

    if-ge v4, v0, :cond_4

    .line 104
    const/4 v4, 0x5

    goto :goto_2

    .line 110
    .end local v4    # "maxDurationSecs":I
    :pswitch_1
    const-string/jumbo v0, "filePath"

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "videoLocalUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    :goto_3
    move v0, v9

    .line 152
    goto :goto_0

    .line 114
    :cond_6
    const-string/jumbo v0, "MiniappVideoPlugin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;

    invoke-direct {v1, p0, v8, v2, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;Ljava/lang/String;Landroid/app/Activity;Liny;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 97
    :sswitch_data_0
    .sparse-switch
        -0x64b71b5c -> :sswitch_0
        0x2d1bf095 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 82
    const-string/jumbo v0, "chooseVideo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "saveVideoToPhotosAlbum"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->b()V

    .line 184
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappVideoPlugin;->a()V

    .line 185
    invoke-super {p0}, Lipd;->onRelease()V

    .line 186
    return-void
.end method
