.class public final Lbry;
.super Ljava/lang/Object;
.source "DeviceBeaconHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbry$b;,
        Lbry$a;,
        Lbry$c;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbti;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbry$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

.field private g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbry;->a:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lbry;->b:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbry;->c:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lbry;->e:Ljava/util/HashSet;

    .line 71
    iput-object p1, p0, Lbry;->g:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbry;->f:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbry;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .locals 14
    .param p0, "data"    # Lbry$b;

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 241
    .line 3495
    iget-object v1, p0, Lbry$b;->b:Lbsg;

    .line 243
    .local v1, "deviceModel":Lbsg;
    new-instance v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;-><init>()V

    .line 244
    .local v0, "bean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    if-eqz v1, :cond_0

    .line 245
    iget-object v2, v1, Lbsg;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    .line 246
    iget-object v2, v1, Lbsg;->k:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceNick:Ljava/lang/String;

    .line 247
    iget-object v2, v1, Lbsg;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceUid:J

    .line 248
    iget-object v2, v1, Lbsg;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->sn:Ljava/lang/String;

    .line 3547
    :cond_0
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_2

    .line 3548
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget v2, v2, Lorg/altbeacon/beacon/BleBeacon;->mDeviceType:I

    .line 251
    :goto_0
    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceTypeCode:I

    .line 252
    invoke-virtual {p0}, Lbry$b;->c()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    .line 4533
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_3

    .line 4534
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget v2, v2, Lorg/altbeacon/beacon/BleBeacon;->major:I

    .line 253
    :goto_1
    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->major:I

    .line 4540
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_4

    .line 4541
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget v2, v2, Lorg/altbeacon/beacon/BleBeacon;->minor:I

    .line 254
    :goto_2
    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->minor:I

    .line 255
    invoke-virtual {p0}, Lbry$b;->d()I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    .line 256
    invoke-virtual {p0}, Lbry$b;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->mac:Ljava/lang/String;

    .line 4568
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_5

    .line 4569
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget-byte v2, v2, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    .line 257
    :goto_3
    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->status:I

    .line 4594
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_6

    .line 4595
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getRssi()I

    move-result v2

    .line 258
    :goto_4
    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->rssi:I

    .line 4601
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_8

    .line 4602
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getDistance()D

    move-result-wide v6

    .line 4603
    cmpg-double v2, v6, v8

    if-ltz v2, :cond_8

    .line 4605
    cmpl-double v2, v6, v8

    if-nez v2, :cond_7

    move v2, v4

    .line 259
    :goto_5
    iput v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    .line 4622
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_a

    .line 4623
    invoke-static {}, Lorg/altbeacon/beacon/Beacon;->getDistanceCalculator()Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v2

    iget-object v5, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    .line 4624
    invoke-virtual {v5}, Lorg/altbeacon/beacon/BleBeacon;->getTxPower()I

    move-result v5

    iget-object v6, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v6}, Lorg/altbeacon/beacon/BleBeacon;->getRssi()I

    move-result v6

    int-to-double v6, v6

    .line 4623
    invoke-interface {v2, v5, v6, v7}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-int v2, v6

    .line 4625
    if-ltz v2, :cond_a

    .line 4627
    if-nez v2, :cond_9

    .line 260
    :goto_6
    iput v4, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->momentDistance:I

    .line 5575
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    if-eqz v2, :cond_1

    .line 5576
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    iget-byte v3, v2, Lorg/altbeacon/beacon/BleBeacon;->mDevAttr:B

    .line 261
    :cond_1
    iput v3, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->devAttr:I

    .line 263
    return-object v0

    :cond_2
    move v2, v3

    .line 3550
    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 4536
    goto :goto_1

    :cond_4
    move v2, v3

    .line 4543
    goto :goto_2

    :cond_5
    move v2, v3

    .line 4571
    goto :goto_3

    :cond_6
    move v2, v3

    .line 4597
    goto :goto_4

    .line 4609
    :cond_7
    iget-object v2, p0, Lbry$b;->a:Lorg/altbeacon/beacon/BleBeacon;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/BleBeacon;->getDistance()D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    double-to-int v2, v6

    goto :goto_5

    :cond_8
    move v2, v3

    .line 4611
    goto :goto_5

    :cond_9
    move v4, v2

    .line 4630
    goto :goto_6

    :cond_a
    move v4, v3

    .line 4632
    goto :goto_6
.end method

.method public static a(Lorg/altbeacon/beacon/BleBeacon;)Ljava/lang/String;
    .locals 3
    .param p0, "bleBeacon"    # Lorg/altbeacon/beacon/BleBeacon;

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-byte v0, p0, Lorg/altbeacon/beacon/BleBeacon;->mState:B

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lorg/altbeacon/beacon/BleBeacon;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceServiceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/altbeacon/beacon/BleBeacon;->mDeviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 226
    iget-object v0, p0, Lbry;->g:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 227
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 181
    iget-object v2, p0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 183
    .local v0, "data":Lbry$b;
    if-eqz v0, :cond_0

    .line 185
    iget-object v3, p0, Lbry;->a:Landroid/os/Handler;

    .line 1495
    iget-object v4, v0, Lbry$b;->c:Ljava/lang/Runnable;

    .line 185
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2487
    .end local v0    # "data":Lbry$b;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lbry;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbto;

    .line 3051
    iget-object v4, v2, Lbto;->c:Lbtn;

    if-eqz v4, :cond_2

    .line 3052
    iget-object v2, v2, Lbto;->c:Lbtn;

    invoke-interface {v2}, Lbtn;->b()V

    goto :goto_1

    .line 2491
    :cond_3
    const-string/jumbo v2, "com.alibaba.dingtalk.ACTION_SMART_DEVICE_UPDATE"

    invoke-direct {p0, v2}, Lbry;->a(Ljava/lang/String;)V

    .line 2492
    const-string/jumbo v2, "com.alibaba.dingtalk.ACTION_ENTER_DOOR_RANGE_UPDATE"

    invoke-direct {p0, v2}, Lbry;->a(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public final a(Lbti;)V
    .locals 1
    .param p1, "listener"    # Lbti;

    .prologue
    .line 381
    iget-object v0, p0, Lbry;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbry;->b:Ljava/util/List;

    .line 384
    :cond_0
    iget-object v0, p0, Lbry;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public a(ZLbry$b;)V
    .locals 8
    .param p1, "newDevice"    # Z
    .param p2, "data"    # Lbry$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "modelBean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    iget-object v2, p0, Lbry;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbto;

    .line 6021
    .local v1, "receiver":Lbto;
    iget-wide v4, v1, Lbto;->b:J

    .line 451
    invoke-virtual {p2}, Lbry$b;->d()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 6025
    iget-wide v4, v1, Lbto;->a:J

    .line 451
    invoke-virtual {p2}, Lbry$b;->c()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 452
    if-nez v0, :cond_1

    .line 453
    invoke-static {p2}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    .line 6033
    :cond_1
    iget-object v3, v1, Lbto;->c:Lbtn;

    if-eqz v3, :cond_0

    .line 6034
    iget-object v3, v1, Lbto;->c:Lbtn;

    invoke-interface {v3, p1, v0}, Lbtn;->a(ZLcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    goto :goto_0

    .line 459
    .end local v1    # "receiver":Lbto;
    :cond_2
    if-eqz p1, :cond_3

    .line 460
    const-string/jumbo v2, "com.alibaba.dingtalk.ACTION_ENTER_DOOR_RANGE_UPDATE"

    invoke-direct {p0, v2}, Lbry;->a(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v2, "com.alibaba.dingtalk.ACTION_SMART_DEVICE_UPDATE"

    invoke-direct {p0, v2}, Lbry;->a(Ljava/lang/String;)V

    .line 463
    :cond_3
    return-void
.end method

.method public b(Lbry$b;)V
    .locals 8
    .param p1, "data"    # Lbry$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "modelBean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    iget-object v2, p0, Lbry;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbto;

    .line 7021
    .local v1, "receiver":Lbto;
    iget-wide v4, v1, Lbto;->b:J

    .line 468
    invoke-virtual {p1}, Lbry$b;->d()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 7025
    iget-wide v4, v1, Lbto;->a:J

    .line 468
    invoke-virtual {p1}, Lbry$b;->c()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 469
    if-nez v0, :cond_1

    .line 470
    invoke-static {p1}, Lbry;->a(Lbry$b;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    .line 7039
    :cond_1
    iget-object v3, v1, Lbto;->c:Lbtn;

    if-eqz v3, :cond_0

    .line 7040
    iget-object v3, v1, Lbto;->c:Lbtn;

    invoke-interface {v3, v0}, Lbtn;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    goto :goto_0

    .line 476
    .end local v1    # "receiver":Lbto;
    :cond_2
    const-string/jumbo v2, "com.alibaba.dingtalk.ACTION_ENTER_DOOR_RANGE_UPDATE"

    invoke-direct {p0, v2}, Lbry;->a(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v2, "com.alibaba.dingtalk.ACTION_SMART_DEVICE_UPDATE"

    invoke-direct {p0, v2}, Lbry;->a(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public final b(Lbti;)V
    .locals 1
    .param p1, "listener"    # Lbti;

    .prologue
    .line 388
    iget-object v0, p0, Lbry;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lbry;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
