.class public Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
.super Lipd;
.source "H5SystemInfoPlugin.java"


# instance fields
.field private a:Liop;

.field private b:Z

.field final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private c:[F

.field private d:[F

.field private e:Ljava/lang/Long;

.field private volatile f:I

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lipd;-><init>()V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->e:Ljava/lang/Long;

    .line 56
    const/16 v0, 0x32

    iput v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->f:I

    .line 60
    iput-boolean v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->h:Z

    .line 62
    iput-boolean v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->i:Z

    .line 64
    iput-boolean v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->j:Z

    .line 67
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$1;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->l:Landroid/hardware/SensorEventListener;

    .line 356
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$4;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-boolean v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b:Z

    if-nez v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "sensor"

    .line 185
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 186
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->l:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 187
    iput-boolean v3, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b:Z

    .line 188
    iput-boolean v3, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->h:Z

    .line 189
    iput-boolean v3, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->i:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->e:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->k:I

    return v0
.end method

.method static synthetic access$1002(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->k:I

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->e:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->f:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->c:[F

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
    .param p1, "x1"    # [F

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->c:[F

    return-object p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)[F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->d:[F

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
    .param p1, "x1"    # [F

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->d:[F

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->a:Liop;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->h:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->i:Z

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->j:Z

    return v0
.end method

.method static synthetic access$802(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->j:Z

    return p1
.end method

.method static synthetic access$900(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b()I

    move-result v0

    return v0
.end method

.method private b()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 378
    iget-boolean v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->j:Z

    if-eqz v5, :cond_0

    .line 379
    iget v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->k:I

    .line 401
    :goto_0
    return v5

    .line 383
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 384
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 387
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->j:Z

    .line 388
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    const-string/jumbo v5, "level"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 392
    .local v3, "level":I
    const-string/jumbo v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 395
    .local v4, "scale":I
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    iput v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->k:I

    .line 396
    iget v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "level":I
    .end local v4    # "scale":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getCurrentBatteryPercentage...e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget v5, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->k:I

    goto :goto_0
.end method

.method public static getInternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v9, v10, :cond_0

    .line 341
    const-string/jumbo v9, ""

    .line 353
    :goto_0
    return-object v9

    .line 344
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 345
    .local v5, "file":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 346
    .local v8, "statFs":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 347
    .local v2, "blockSizeLong":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    .line 348
    .local v0, "blockCountLong":J
    mul-long v6, v0, v2

    .line 349
    .local v6, "size":J
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 350
    .end local v0    # "blockCountLong":J
    .end local v2    # "blockSizeLong":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "size":J
    .end local v8    # "statFs":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 351
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5SystemInfoPlugin"

    const-string/jumbo v10, "getInternalMemorySize..."

    invoke-static {v9, v10, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const-string/jumbo v9, ""

    goto :goto_0
.end method


# virtual methods
.method protected appendSystemInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 410
    return-void
.end method

.method public getHeight(Liop;FLandroid/util/DisplayMetrics;)I
    .locals 5
    .param p1, "h5Page"    # Liop;
    .param p2, "density"    # F
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "height":I
    const/4 v0, 0x1

    .line 311
    .local v0, "getHeightFromWebView":Z
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 312
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 313
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v3, :cond_0

    .line 314
    const/4 v4, 0x0

    .line 330
    :goto_0
    return v4

    .line 316
    :cond_0
    const-string/jumbo v4, "h5_getWebViewHeight"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "getHeightWebview":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 322
    :cond_1
    if-eqz v0, :cond_3

    .line 323
    invoke-interface {p1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_2
    :goto_1
    move v4, v2

    .line 330
    goto :goto_0

    .line 325
    :cond_3
    if-eqz p3, :cond_2

    .line 326
    iget v4, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2081
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 229
    instance-of v1, v1, Liop;

    if-eqz v1, :cond_0

    .line 3081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 230
    check-cast v1, Liop;

    iput-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->a:Liop;

    .line 232
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->g:Ljava/lang/ref/WeakReference;

    .line 234
    const-string/jumbo v1, "getSystemInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    const-string/jumbo v1, "NORMAL"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$3;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;Liny;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move v1, v2

    .line 305
    :goto_0
    return v1

    .line 289
    :cond_1
    const-string/jumbo v1, "watchShake"

    .line 4065
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 291
    const-string/jumbo v4, "monitorAccelerometer"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->h:Z

    .line 5121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 292
    const-string/jumbo v4, "monitorCompass"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->i:Z

    .line 6121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 293
    const-string/jumbo v4, "interval"

    const/16 v5, 0x32

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->f:I

    .line 295
    iget-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->i:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->h:Z

    if-eqz v1, :cond_4

    .line 296
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b:Z

    if-nez v1, :cond_3

    .line 6164
    iget-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b:Z

    if-nez v1, :cond_3

    .line 6168
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6169
    const-string/jumbo v4, "sensor"

    .line 6170
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 6171
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 6172
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 6174
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->l:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v6, v4, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 6175
    iget-object v4, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->l:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4, v5, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 6176
    iput-boolean v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b:Z

    :cond_3
    :goto_1
    move v1, v3

    .line 305
    goto :goto_0

    .line 300
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->b:Z

    if-eqz v1, :cond_3

    .line 301
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->a()V

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 196
    const-string/jumbo v0, "getSystemInfo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "watchShake"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->a:Liop;

    .line 203
    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->g:Ljava/lang/ref/WeakReference;

    .line 204
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->a()V

    .line 1210
    const-string/jumbo v0, "NORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin$2;-><init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method
