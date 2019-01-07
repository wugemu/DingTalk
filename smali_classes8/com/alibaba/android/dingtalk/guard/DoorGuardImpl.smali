.class public Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;
.super Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;
.source "DoorGuardImpl.java"


# static fields
.field private static final DEVICE_BIND_PATH:Ljava/lang/String; = "/page/devicebind"

.field private static final DEVICE_PATH:Ljava/lang/String; = "/page/smartdevice"

.field private static final TAG:Ljava/lang/String; = "DoorGuardImpl"

.field private static listenerId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private mDeviceBindListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->listenerId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->parseParamsFromUri(Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    move-result-object v0

    return-object v0
.end method

.method private parseParamsFromOldUri(Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 316
    :try_start_0
    new-instance v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;-><init>()V

    .line 317
    .local v1, "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    const-string/jumbo v3, "connType"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    .line 318
    const-string/jumbo v3, "action"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->action:Ljava/lang/String;

    .line 319
    const-string/jumbo v3, "title"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->title:Ljava/lang/String;

    .line 320
    const-string/jumbo v3, "macAddress"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->macAddress:Ljava/lang/String;

    .line 321
    const-string/jumbo v3, "status"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->status:Ljava/lang/String;

    .line 322
    const-string/jumbo v3, "devTypeCode"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceTypeCode:I

    .line 326
    :cond_0
    const-string/jumbo v3, "deviceId"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceId:I

    .line 330
    :cond_1
    const-string/jumbo v3, "devServiceId"

    invoke-static {p1, v3}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->serviceId:I

    .line 334
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v1    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DoorGuardImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "parseParamsFromOldUri exp = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseParamsFromUri(Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 344
    :try_start_0
    new-instance v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;-><init>()V

    .line 345
    .local v1, "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    const-string/jumbo v5, "conn"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    .line 346
    const-string/jumbo v5, "action"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->action:Ljava/lang/String;

    .line 348
    const-string/jumbo v5, "title"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->title:Ljava/lang/String;

    .line 349
    const-string/jumbo v5, "mac"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->macAddress:Ljava/lang/String;

    .line 350
    const-string/jumbo v5, "status"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->status:Ljava/lang/String;

    .line 351
    const-string/jumbo v5, "code"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 353
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceTypeCode:I

    .line 355
    :cond_0
    const-string/jumbo v5, "devId"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceId:I

    .line 360
    :cond_1
    const-string/jumbo v5, "service"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->serviceId:I

    .line 365
    :cond_2
    const-string/jumbo v5, "version"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->minVersion:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    .line 368
    const-string/jumbo v5, "token"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->token:Ljava/lang/String;

    .line 369
    const-string/jumbo v5, "deviceVersion"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->deviceVersion:Ljava/lang/String;

    .line 370
    const-string/jumbo v5, "wifiSupport"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "wifiSupportStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 372
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->wifiSupport:Z

    .line 374
    :cond_3
    const-string/jumbo v5, "ssids"

    invoke-static {p1, v5}, Lbtm;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "ssidsStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 376
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->ssids:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .end local v2    # "ssidsStr":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "wifiSupportStr":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DoorGuardImpl"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "parseParamsFromUri exp = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerAppState()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 183
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$2;-><init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 195
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 196
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 198
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-void
.end method

.method private unregisterAppState()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    if-eqz v1, :cond_0

    .line 203
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 204
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mAPPStateListener:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    .line 207
    .end local v0    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnDoorBeaconListener(Lbti;)V
    .locals 1
    .param p1, "listener"    # Lbti;

    .prologue
    .line 9054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 392
    invoke-virtual {v0, p1}, Lbry;->a(Lbti;)V

    .line 393
    return-void
.end method

.method public addWdsDevice(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 507
    .line 15051
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15052
    :cond_0
    const-string/jumbo v0, "ApDeviceService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "startManualMesh context is null or corpId is null"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15053
    if-eqz p3, :cond_1

    .line 15054
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "params is invalid"

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 15056
    .end local p1    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 15058
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    new-instance v0, Lblz$1;

    invoke-direct {v0, p3, p1, p2}, Lblz$1;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;)V

    .line 15088
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 15089
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {v1, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 15091
    :cond_3
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lbnc;->b(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public findDevicesByCorpId(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6054
    sget-object v1, Lbry$c;->a:Lbry;

    .line 6352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6356
    iget-object v0, v1, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 6495
    iget-object v4, v0, Lbry$b;->b:Lbsg;

    .line 6357
    if-eqz v4, :cond_0

    .line 7495
    iget-object v4, v0, Lbry$b;->b:Lbsg;

    .line 6360
    iget-object v4, v4, Lbsg;->j:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6361
    invoke-static {v0}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    .line 6365
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6369
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6370
    new-instance v0, Lbry$2;

    invoke-direct {v0, v1}, Lbry$2;-><init>(Lbry;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    :cond_2
    return-object v2
.end method

.method public getAllActivityDevice()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 11054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 11323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11324
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 11325
    invoke-virtual {v0}, Lbry$b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11328
    invoke-static {v0}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    .line 11332
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_1
    return-object v1
.end method

.method public getAllFoundDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 12054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 12339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12340
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 12341
    invoke-static {v0}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    .line 12345
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_0
    return-object v1
.end method

.method public getClientMac(Lcma;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 517
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$5;-><init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;Lcma;)V

    .line 15093
    if-nez v2, :cond_0

    .line 15094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15096
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 15099
    const-string/jumbo v0, "clientMacFromC1"

    invoke-static {v3, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15101
    invoke-interface {v2, v0}, Lbmi;->a(Ljava/lang/Object;)V

    .line 16042
    :cond_1
    :goto_0
    return-void

    .line 15105
    :cond_2
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15106
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NOT_WIFI:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NOT_WIFI:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 15111
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 15112
    if-nez v4, :cond_4

    .line 15113
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_ERROR:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_ERROR:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 15117
    :cond_4
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15118
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15119
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_CORP_ID_INVALID:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_CORP_ID_INVALID:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 15123
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 15124
    if-eqz v0, :cond_6

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 15126
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "alpha_query_mac_by_c1_enabled"

    invoke-virtual {v6, v7, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    .line 15127
    if-nez v0, :cond_7

    .line 15128
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_QUERY_MAC_BY_C1_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_QUERY_MAC_BY_C1_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 15124
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 15133
    :cond_7
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Lblw;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 15135
    invoke-static {}, Lbme;->a()Lbme;

    move-result-object v1

    new-instance v4, Lbly$1;

    invoke-direct {v4, v2, v3}, Lbly$1;-><init>(Lbmi;Landroid/content/Context;)V

    .line 16041
    iget-object v2, v1, Lbme;->a:Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16044
    new-instance v2, Lbmm;

    invoke-direct {v2}, Lbmm;-><init>()V

    .line 16045
    iput-object v0, v2, Lbmm;->a:Ljava/lang/String;

    .line 16046
    iput-object v5, v2, Lbmm;->b:Ljava/lang/String;

    .line 16047
    iget-object v0, v1, Lbme;->a:Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;

    new-instance v3, Lbme$1;

    invoke-direct {v3, v1, v4}, Lbme$1;-><init>(Lbme;Lbmi;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/dingtalk/alpha/npc/ClientNpc;->getMac(Lbmm;Lbmi;)V

    goto/16 :goto_0
.end method

.method public getDeviceModelByDeviceId(IJ)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "deviceId"    # J

    .prologue
    .line 5054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 5268
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 5269
    invoke-virtual {v0}, Lbry$b;->c()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lbry$b;->d()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 5270
    invoke-static {v0}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5273
    :cond_1
    const/4 v0, 0x0

    .line 128
    goto :goto_0
.end method

.method public getDevicePwd(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 512
    invoke-static {p1, p2, p3}, Lblz;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 513
    return-void
.end method

.method public getEnterRangeDevice()Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 3305
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 3306
    invoke-virtual {v0}, Lbry$b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3309
    invoke-static {v0}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v1

    .line 3313
    invoke-virtual {v0, v3}, Lbry$b;->a(Lbry$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    move-object v2, v0

    move-object v3, v1

    .line 3317
    goto :goto_0

    .line 116
    :cond_1
    return-object v2

    :cond_2
    move-object v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method public getFoundDeviceCount()I
    .locals 1

    .prologue
    .line 2054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 2298
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 111
    return v0
.end method

.method public getUnactiveDevice()Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 4054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 4280
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 4281
    invoke-virtual {v0}, Lbry$b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4284
    invoke-static {v0}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v1

    .line 4288
    invoke-virtual {v0, v3}, Lbry$b;->a(Lbry$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    move-object v2, v0

    move-object v3, v1

    .line 4292
    goto :goto_0

    .line 123
    :cond_1
    return-object v2

    :cond_2
    move-object v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->init(Landroid/app/Application;)V

    .line 76
    invoke-static {}, Lbtk;->a()V

    .line 77
    return-void
.end method

.method public isSmartDeviceFound()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 1232
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 1233
    invoke-virtual {v0}, Lbry$b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1234
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 1236
    goto :goto_0

    .line 106
    :cond_0
    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onApplicationCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->onApplicationCreate()V

    .line 82
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$1;-><init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

.method public onDeviceBindFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 488
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    .line 489
    .local v0, "listener":Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;
    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 493
    :cond_0
    return-void
.end method

.method public onDeviceBindSuccess(I)V
    .locals 2
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 479
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    .line 480
    .local v0, "listener":Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;
    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public onLogin()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 401
    const-string/jumbo v0, "DoorGuardImpl"

    const-string/jumbo v1, "onLogin"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lbtk;->a()V

    .line 403
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$3;-><init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V

    .line 10064
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lbnc;->a(JLcma;)V

    .line 424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;-><init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method public onLogout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 456
    const-string/jumbo v0, "DoorGuardImpl"

    const-string/jumbo v1, "onLogout"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lbtk;->a()V

    .line 458
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 459
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    .line 10300
    iget-object v1, v0, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 10301
    iget-object v0, v0, Lbnh;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 460
    return-void
.end method

.method public parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V

    .line 262
    return-void
.end method

.method public parseDeviceBindUrl(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 266
    if-nez p2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    :try_start_0
    const-string/jumbo v5, "/page/devicebind"

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 273
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->parseParamsFromOldUri(Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    move-result-object v3

    .line 279
    .local v3, "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :goto_1
    if-eqz v3, :cond_5

    .line 280
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "params_device_bind"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v5, "params_conn_type"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->action:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    if-eqz p4, :cond_2

    .line 285
    sget-object v5, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->listenerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 286
    .local v1, "id":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    const-string/jumbo v5, "params_device_bind_listener_id"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    .end local v1    # "id":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 291
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    const-string/jumbo v5, "lan"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    .line 292
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "qrcode"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 293
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v6

    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->url:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v5}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setRequestUrl(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v5, "DoorGuardImpl"

    const-string/jumbo v6, "setRequestUrl when not login"

    invoke-static {v5, v6}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_4
    const-string/jumbo v5, "lan"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 297
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 298
    .local v4, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "action"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->action:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "DoorGuardImpl"

    const-string/jumbo v7, "alpha_open_dd_from_portal"

    invoke-interface {v5, v6, v7, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .end local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_3
    const-string/jumbo v5, "scan"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 309
    .restart local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "mainpage"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "DoorGuard"

    const-string/jumbo v7, "oa_bravo_attendance_scan_click"

    invoke-interface {v5, v6, v7, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 274
    .end local v4    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    const-string/jumbo v5, "/page/smartdevice"

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 275
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->parseParamsFromUri(Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    move-result-object v3

    .restart local v3    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    goto/16 :goto_1

    .line 277
    .end local v3    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :cond_7
    new-instance v3, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    goto/16 :goto_1

    .line 293
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 302
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DoorGuardImpl"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "parseDeviceBindUrl exp = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public registerDeviceBeaconReceiver(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 13054
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    sget-object v0, Lbry$c;->a:Lbry;

    .line 13396
    if-eqz p1, :cond_0

    .line 13399
    iget-object v0, v0, Lbry;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13400
    invoke-static {}, Lbtk;->a()V

    .line 13402
    const-string/jumbo v0, "door"

    const-string/jumbo v1, "handle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerDeviceBeaconReceiver -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method

.method public removeOnDoorBeaconListener(Lbti;)V
    .locals 1
    .param p1, "listener"    # Lbti;

    .prologue
    .line 10054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 396
    invoke-virtual {v0, p1}, Lbry;->b(Lbti;)V

    .line 397
    return-void
.end method

.method public resetWifiConfig(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    const-string/jumbo v1, "ble"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "resetWifi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 239
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public resetWifiConfig(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .param p4, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 243
    const-string/jumbo v2, "ble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "resetWifi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v2, "params_device_bind"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    if-eqz p4, :cond_0

    .line 250
    sget-object v2, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->listenerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 251
    .local v0, "id":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    const-string/jumbo v2, "params_device_bind_listener_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    .end local v0    # "id":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 257
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public startBeaconService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    invoke-static {p1}, Lbte;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lbtk;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->registerAppState()V

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 142
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startBeaconService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    invoke-static {p1}, Lbte;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lbtk;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->registerAppState()V

    .line 165
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 158
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startBindDevice(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    const-string/jumbo v1, "ble"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startBindDevice(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "connType"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    .param p4, "bindListener"    # Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 219
    const-string/jumbo v2, "ble"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/DeviceBindActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "params_device_bind"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    if-eqz p4, :cond_0

    .line 224
    sget-object v2, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->listenerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 225
    .local v0, "id":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->mDeviceBindListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    const-string/jumbo v2, "params_device_bind_listener_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    .end local v0    # "id":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public startDoorDiagnostics(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method public stopBeaconService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    invoke-static {p1}, Lbte;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lbtk;->b()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->unregisterAppState()V

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/guard/core/DeviceBeaconService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unBindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .param p3, "sn"    # Ljava/lang/String;
    .param p4, "deviceUid"    # J
    .param p6, "listener"    # Lcma;

    .prologue
    .line 388
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 8084
    new-instance v5, Lbso$7;

    invoke-direct {v5, v0, p6}, Lbso$7;-><init>(Lbso;Lcma;)V

    .line 8092
    const-class v0, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->unbindV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    .line 389
    return-void
.end method

.method public unregisterDeviceBeaconReceiver(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 14054
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbto;>;"
    sget-object v0, Lbry$c;->a:Lbry;

    .line 14407
    if-eqz p1, :cond_0

    .line 14410
    iget-object v0, v0, Lbry;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 14411
    invoke-static {}, Lbtk;->a()V

    .line 14413
    const-string/jumbo v0, "door"

    const-string/jumbo v1, "handle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterDeviceBeaconReceiver -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_0
    return-void
.end method
