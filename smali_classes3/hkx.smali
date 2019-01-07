.class public Lhkx;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static f:Lhkx;


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lhkx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhkx;->a:Ljava/lang/String;

    .line 74
    new-instance v0, Lhkx;

    invoke-direct {v0}, Lhkx;-><init>()V

    sput-object v0, Lhkx;->f:Lhkx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhkx;->d:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhkx;->b:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public static a()Lhkx;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lhkx;->f:Lhkx;

    return-object v0
.end method

.method static synthetic a(Lhkx;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lhkx;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    .line 6478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6479
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6480
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkn;

    .line 6481
    iget-object v3, v0, Lhkn;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6482
    iget-object v0, v0, Lhkn;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6479
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_1
    return-object v2
.end method

.method static synthetic a(Lhkx;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lhkx;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 68
    .line 6462
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6463
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 6464
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhju;

    invoke-static {v0}, Lhkn;->a(Lhju;)Lhkn;

    move-result-object v0

    .line 6465
    if-eqz v0, :cond_0

    .line 6466
    iget-boolean v3, v0, Lhkn;->b:Z

    if-eqz v3, :cond_1

    .line 6467
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6463
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6469
    :cond_1
    iget-object v0, v0, Lhkn;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_2
    return-object v2
.end method

.method static synthetic a(Lhkx;)V
    .locals 3
    .param p0, "x0"    # Lhkx;

    .prologue
    .line 68
    .line 4325
    :try_start_0
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAlarmListener"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4326
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4327
    invoke-static {}, Lhkx;->f()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4330
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lhkx;J)V
    .locals 5
    .param p0, "x0"    # Lhkx;
    .param p1, "x1"    # J

    .prologue
    const/4 v4, 0x0

    .line 68
    .line 5304
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "registerAlarmListener triggerAtMillis:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5307
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5308
    if-eqz v0, :cond_0

    .line 5309
    const/4 v1, 0x0

    invoke-static {}, Lhkx;->f()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5313
    :cond_0
    :goto_0
    return-void

    .line 5311
    :catch_0
    move-exception v0

    .line 5312
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "registerAlarmListener err "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lhkx;Z)Z
    .locals 0
    .param p0, "x0"    # Lhkx;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lhkx;->d:Z

    return p1
.end method

.method static synthetic b(Lhkx;)Z
    .locals 1
    .param p0, "x0"    # Lhkx;

    .prologue
    .line 68
    iget-boolean v0, p0, Lhkx;->d:Z

    return v0
.end method

.method static synthetic c(Lhkx;)V
    .locals 2
    .param p0, "x0"    # Lhkx;

    .prologue
    .line 68
    .line 6146
    invoke-static {}, Lhkx;->d()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhkx$2;

    invoke-direct {v1, p0}, Lhkx$2;-><init>(Lhkx;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public static d()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 252
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lhkx;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 254
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 256
    return-object v0
.end method

.method private static f()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 335
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 336
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/lightapp/runtime/location/auto/AutoAttendanceAlarmReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.alibaba.android.rimet.AutoAttendanceAlarmReceiver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final a(J)Ljava/lang/Long;
    .locals 3
    .param p1, "planId"    # J

    .prologue
    .line 237
    iget-object v0, p0, Lhkx;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "source"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 97
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "AutoAttendanceManager.start: New fast checkin is opened, return!"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[autoAttendance] manager start"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lhkx;->d()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhkx$1;

    invoke-direct {v1, p0, p1}, Lhkx$1;-><init>(Lhkx;I)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 196
    if-eqz p1, :cond_1

    .line 1344
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1345
    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    invoke-static {}, Lhkx;->d()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhkx$4;

    invoke-direct {v1, p0, p1}, Lhkx$4;-><init>(Lhkx;Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 225
    :cond_1
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestWifiScan err. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 498
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    :try_start_0
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save fast sw config "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Lhkx;->c:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parse fast sw config err "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 132
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 133
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "tryStart mIsRunning:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-boolean v5, p0, Lhkx;->d:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v1, p0, Lhkx;->d:Z

    if-eqz v1, :cond_0

    .line 1093
    invoke-virtual {p0, v6}, Lhkx;->a(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lhkx;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhkx;->e:Ljava/lang/String;

    .line 244
    :cond_0
    iget-object v0, p0, Lhkx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 357
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "AutoAttendanceManager.fetchOACheckInTaskFromServer: New fast checkin is opened, return!"

    aput-object v5, v4, v3

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {}, Lhkw;->a()Lhkw;

    invoke-static {}, Lhkw;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v3, "fetchOACheckInTaskFromServer today is already request."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 1410
    if-eqz v4, :cond_3

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    .line 1411
    :goto_1
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1412
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1413
    if-eqz v1, :cond_2

    .line 1414
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 1415
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1416
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1422
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "swork_fs_checkin_task_disabled_corp"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1423
    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1425
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v1

    .line 2391
    iget-object v5, v1, Lhkw;->b:Ljava/util/List;

    .line 1426
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v4, v3

    .line 1427
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 1428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1429
    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1430
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1431
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1432
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1427
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1439
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1441
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v1

    .line 3214
    iget-object v1, v1, Lhkw;->a:Ljava/util/Map;

    .line 1442
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1443
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhky;

    .line 3421
    iget-object v4, v1, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 1445
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isExpire()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1446
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1447
    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1448
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1449
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1450
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 368
    .local v0, "corpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 369
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v3, "fetchOACheckInTaskFromServer corpId isEmpty."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :cond_a
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhkx;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "fetchOACheckInTaskFromServer corpIds:"

    aput-object v5, v4, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lhqr;->a()Lhqr;

    move-result-object v2

    new-instance v3, Lhkx$6;

    invoke-direct {v3, p0}, Lhkx$6;-><init>(Lhkx;)V

    .line 4094
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    .line 4095
    new-instance v4, Lhqr$2;

    invoke-direct {v4, v2, v3}, Lhqr$2;-><init>(Lhqr;Lcma;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;->listFastCheckSchedule(Ljava/util/List;Liyv;)V

    goto/16 :goto_0
.end method
