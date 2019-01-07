.class public Lbmc;
.super Ljava/lang/Object;
.source "QuickConnectWifiManager.java"


# static fields
.field private static volatile a:Lbmc;


# instance fields
.field private b:Z

.field private c:I

.field private d:Lbni;

.field private e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmc;->b:Z

    .line 47
    new-instance v0, Lbmc$1;

    invoke-direct {v0, p0}, Lbmc$1;-><init>(Lbmc;)V

    iput-object v0, p0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    .line 99
    new-instance v0, Lbmc$2;

    invoke-direct {v0, p0}, Lbmc$2;-><init>(Lbmc;)V

    iput-object v0, p0, Lbmc;->f:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lbmc$3;

    invoke-direct {v0, p0}, Lbmc$3;-><init>(Lbmc;)V

    iput-object v0, p0, Lbmc;->g:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lbmc$4;

    invoke-direct {v0, p0}, Lbmc$4;-><init>(Lbmc;)V

    iput-object v0, p0, Lbmc;->h:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lbmc$5;

    invoke-direct {v0, p0}, Lbmc$5;-><init>(Lbmc;)V

    iput-object v0, p0, Lbmc;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lbmc;I)I
    .locals 1
    .param p0, "x0"    # Lbmc;
    .param p1, "x1"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lbmc;->c:I

    return v0
.end method

.method public static final a()Lbmc;
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lbmc;->a:Lbmc;

    if-nez v0, :cond_1

    .line 306
    const-class v1, Lbmc;

    monitor-enter v1

    .line 307
    :try_start_0
    sget-object v0, Lbmc;->a:Lbmc;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lbmc;

    invoke-direct {v0}, Lbmc;-><init>()V

    sput-object v0, Lbmc;->a:Lbmc;

    .line 310
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_1
    sget-object v0, Lbmc;->a:Lbmc;

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbmc;Lbni;)Lbni;
    .locals 1
    .param p0, "x0"    # Lbmc;
    .param p1, "x1"    # Lbni;

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lbmc;->d:Lbni;

    return-object v0
.end method

.method static synthetic a(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    .line 2316
    iget-object v0, p0, Lbmc;->d:Lbni;

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lbmc;->d:Lbni;

    iget-object v0, v0, Lbni;->h:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    :goto_0
    return-object v0

    .line 2319
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_0
.end method

.method private a(Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "psk"    # Ljava/lang/String;
    .param p4, "delay"    # J

    .prologue
    .line 241
    const-string/jumbo v1, "2"

    invoke-static {v1}, Lbmb;->a(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnecting(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lbmc;->d:Lbni;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbmc;->d:Lbni;

    iget-boolean v1, v1, Lbni;->g:Z

    if-eqz v1, :cond_1

    .line 244
    new-instance v0, Lbmc$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lbmc$6;-><init>(Lbmc;Ljava/lang/String;Ljava/lang/String;J)V

    .line 270
    .local v0, "listener":Lcma;
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 271
    .local v2, "bssid":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lbmc;->d:Lbni;

    iget-object v1, v1, Lbni;->a:Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lblz;->a(Ljava/lang/String;Ljava/lang/String;IJLcma;)V

    .line 279
    .end local v0    # "listener":Lcma;
    .end local v2    # "bssid":Ljava/lang/String;
    :goto_1
    return-void

    .line 270
    .restart local v0    # "listener":Lcma;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 277
    .end local v0    # "listener":Lcma;
    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lbmc;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method static synthetic a(Lbmc;Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "x0"    # Lbmc;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 27
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lbmc;->a(Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lbmc;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lbmc;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lbmc;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "psk"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .prologue
    .line 282
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbmc$7;

    invoke-direct {v1, p0, p1, p2}, Lbmc$7;-><init>(Lbmc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3, p4}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lbmc;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lbmc;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method static synthetic a(Lbmc;Z)Z
    .locals 0
    .param p0, "x0"    # Lbmc;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lbmc;->b:Z

    return p1
.end method

.method static synthetic b(Lbmc;)Lbni;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-object v0, p0, Lbmc;->d:Lbni;

    return-object v0
.end method

.method static synthetic c(Lbmc;)I
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget v0, p0, Lbmc;->c:I

    return v0
.end method

.method static synthetic d(Lbmc;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-object v0, p0, Lbmc;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lbmc;)Z
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-boolean v0, p0, Lbmc;->b:Z

    return v0
.end method

.method static synthetic f(Lbmc;)Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-object v0, p0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    return-object v0
.end method

.method static synthetic g(Lbmc;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-object v0, p0, Lbmc;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lbmc;)I
    .locals 2
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget v0, p0, Lbmc;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbmc;->c:I

    return v0
.end method

.method static synthetic i(Lbmc;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-object v0, p0, Lbmc;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lbmc;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbmc;

    .prologue
    .line 27
    iget-object v0, p0, Lbmc;->h:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(Lbni;)V
    .locals 23
    .param p1, "request"    # Lbni;

    .prologue
    .line 323
    if-nez p1, :cond_1

    .line 324
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "startQuickConnectWifi request is null"

    aput-object v22, v3, v21

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lbni;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "startQuickConnectWifi ssid is null"

    aput-object v22, v3, v21

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmc;->d:Lbni;

    if-eqz v2, :cond_3

    .line 332
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "stop previous connecting to ssid = "

    aput-object v22, v3, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lbmc;->d:Lbni;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lbni;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v3, v21

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lbmc;->b()V

    .line 335
    :cond_3
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "tryToConnectSsid ssid = "

    aput-object v22, v3, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lbni;->b:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v3, v21

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lbmc;->d:Lbni;

    .line 337
    move-object/from16 v0, p1

    iget-object v4, v0, Lbni;->b:Ljava/lang/String;

    .line 338
    .local v4, "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lbni;->c:Ljava/lang/String;

    .line 339
    .local v5, "psk":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lbni;->d:Z

    .line 340
    .local v12, "needScanWifi":Z
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lbni;->f:Z

    .line 342
    .local v8, "connectDirectly":Z
    invoke-static {}, Lbmb;->a()V

    .line 344
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v20, 0x1

    .line 345
    .local v20, "wifiDisabled":Z
    :goto_1
    const-wide/16 v6, 0x0

    .line 346
    .local v6, "delay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 347
    .local v18, "openWifiTime":J
    const-string/jumbo v2, "QuickConnectWifiManager"

    const-string/jumbo v3, "alpha_open_wifi_system_dialog_enter"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 349
    if-eqz v20, :cond_4

    .line 350
    const-wide/16 v6, 0x1388

    .line 352
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 353
    .local v16, "openWifiSuccessTime":J
    sub-long v10, v16, v18

    .line 354
    .local v10, "interval":J
    const-wide/16 v2, 0xc8

    cmp-long v2, v10, v2

    if-ltz v2, :cond_5

    .line 355
    const-string/jumbo v2, "QuickConnectWifiManager"

    const-string/jumbo v3, "alpha_open_wifi_system_dialog_click"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 376
    :cond_5
    if-eqz v12, :cond_a

    .line 1384
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "scanSsid ssid = "

    aput-object v22, v3, v21

    const/16 v21, 0x1

    aput-object v4, v3, v21

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string/jumbo v2, "1"

    invoke-static {v2}, Lbmb;->a(Ljava/lang/String;)V

    .line 1386
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1389
    if-eqz v8, :cond_9

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnecting(Ljava/lang/String;)V

    .line 1394
    :goto_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbmc$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lbmc$8;-><init>(Lbmc;)V

    invoke-virtual {v2, v3, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 344
    .end local v6    # "delay":J
    .end local v10    # "interval":J
    .end local v16    # "openWifiSuccessTime":J
    .end local v18    # "openWifiTime":J
    .end local v20    # "wifiDisabled":Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_1

    .line 358
    .restart local v6    # "delay":J
    .restart local v18    # "openWifiTime":J
    .restart local v20    # "wifiDisabled":Z
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 359
    .local v14, "openWifiFailTime":J
    sub-long v10, v14, v18

    .line 360
    .restart local v10    # "interval":J
    const-wide/16 v2, 0xc8

    cmp-long v2, v10, v2

    if-gez v2, :cond_8

    .line 361
    sget-object v9, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_WIFI_PERMISSION_DISABLED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 362
    .local v9, "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v9, v3}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 364
    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 365
    .local v13, "result":Z
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string/jumbo v22, "tryToConnectSsid ssid = "

    aput-object v22, v3, v21

    const/16 v21, 0x1

    aput-object v4, v3, v21

    const/16 v21, 0x2

    const-string/jumbo v22, ", open wifi canceled by system, auto set psk result = "

    aput-object v22, v3, v21

    const/16 v21, 0x3

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v3, v21

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v9    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .end local v13    # "result":Z
    :cond_8
    sget-object v9, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;->ERROR_NOT_CONNECTED:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;

    .line 368
    .restart local v9    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v9, v3}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onConnectError(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$a;)V

    .line 370
    const-string/jumbo v2, "QuickConnectWifiManager"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string/jumbo v22, "tryToConnectSsid ssid = "

    aput-object v22, v3, v21

    const/16 v21, 0x1

    aput-object v4, v3, v21

    const/16 v21, 0x2

    const-string/jumbo v22, " open wifi canceled by user"

    aput-object v22, v3, v21

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v2, "QuickConnectWifiManager"

    const-string/jumbo v3, "alpha_open_wifi_system_dialog_cancel"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1392
    .end local v9    # "errorCode":Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback$ErrorCode;
    .end local v14    # "openWifiFailTime":J
    .restart local v16    # "openWifiSuccessTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lbmc;->e:Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/alphabase/callback/QuickConnectWifiCallback;->onScanning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 379
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lbmc;->a(Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 410
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lbmc;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lbmc;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lbmc;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lbmc;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lbmc;->d:Lbni;

    .line 416
    return-void
.end method
