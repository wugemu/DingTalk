.class public final Lhgg;
.super Ljava/lang/Object;
.source "KaoQinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhgg$c;,
        Lhgg$a;,
        Lhgg$b;,
        Lhgg$d;
    }
.end annotation


# instance fields
.field public a:Lhgf;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbto;",
            ">;"
        }
    .end annotation
.end field

.field c:Lbtn;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhgg$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhgg;->d:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhgg;->e:Ljava/util/HashSet;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhgg;->f:Ljava/util/HashSet;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lhgg;->h:Ljava/util/Map;

    .line 67
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    iput-object v0, p0, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lhgg;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;
    .locals 4
    .param p0, "deviceModelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .prologue
    .line 175
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    .line 176
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    .line 177
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    .line 178
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhiu;
    .locals 10
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 479
    const/4 v1, 0x0

    .line 503
    :cond_0
    return-object v1

    .line 481
    :cond_1
    const/4 v1, 0x0

    .line 482
    .local v1, "infoModel":Lhiu;
    const/4 v3, 0x0

    .line 483
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;>;"
    iget-object v4, p0, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    if-eqz v4, :cond_2

    .line 484
    iget-object v4, p0, Lhgg;->g:Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->findDevicesByCorpId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 486
    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 487
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 488
    .local v0, "bean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    if-eqz v0, :cond_3

    .line 491
    iget-object v5, p0, Lhgg;->a:Lhgf;

    iget v6, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    int-to-long v6, v6

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lhgf;->a(JJ)Lhiu;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_3

    .line 2167
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lhiu;->d:J

    .line 2168
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    .line 2169
    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lhiu;->c:J

    .line 2170
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 2171
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lhgg;->e:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 498
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V
    .locals 8
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p2, "sourceType"    # Ljava/lang/Integer;
    .param p3, "planId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 395
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 396
    const-string/jumbo v3, "Beacon"

    const-string/jumbo v4, "KaoQinManager"

    const-string/jumbo v5, "[Device Beacon] uploadBeacon fail, model is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string/jumbo v3, "Beacon"

    const-string/jumbo v4, "KaoQinManager"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "[Device Beacon] uploadBeacon source="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "; major="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->major:I

    .line 401
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "; minor="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->minor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 400
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v0, Lhiw;

    invoke-direct {v0}, Lhiw;-><init>()V

    .line 404
    .local v0, "dingAtmRequest":Lhiw;
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->corpId:Ljava/lang/String;

    iput-object v3, v0, Lhiw;->a:Ljava/lang/String;

    .line 405
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceUid:J

    iput-wide v4, v0, Lhiw;->b:J

    .line 406
    iget v3, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    int-to-long v4, v3

    iput-wide v4, v0, Lhiw;->d:J

    .line 407
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    iput-wide v4, v0, Lhiw;->c:J

    .line 408
    iget v3, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->major:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lhiw;->f:Ljava/lang/Integer;

    .line 409
    iget v3, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->minor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lhiw;->g:Ljava/lang/Integer;

    .line 1509
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v4

    .line 1510
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 410
    :cond_1
    iput-wide v4, v0, Lhiw;->e:J

    .line 411
    iput-object p2, v0, Lhiw;->h:Ljava/lang/Integer;

    .line 412
    iput-object p3, v0, Lhiw;->i:Ljava/lang/Long;

    .line 413
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v3

    invoke-virtual {v3}, Lhkx;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lhiw;->j:Ljava/lang/String;

    .line 414
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lhiw;->k:Ljava/lang/String;

    .line 416
    new-instance v2, Lhgg$3;

    invoke-direct {v2, p0, p4}, Lhgg$3;-><init>(Lhgg;Lcma;)V

    .line 443
    .local v2, "listener":Lcma;
    new-instance v1, Lhgg$4;

    invoke-direct {v1, p0, v2}, Lhgg$4;-><init>(Lhgg;Lcma;)V

    .line 451
    .local v1, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v3, Lcom/alibaba/lightapp/runtime/idl/ATManageIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/idl/ATManageIService;

    invoke-interface {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/idl/ATManageIService;->dingAtmCheck(Lhiw;Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(Lhgg$c;)V
    .locals 2
    .param p1, "dingAtmListener"    # Lhgg$c;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v1, p0, Lhgg;->d:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lhgg;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    .line 116
    :cond_0
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
