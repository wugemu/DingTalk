.class public Lorg/altbeacon/beacon/BeaconIntentProcessor;
.super Landroid/app/Service;
.source "BeaconIntentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BeaconIntentProcessor"

.field private static final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/BeaconIntentProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    return-void
.end method

.method public static process(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "monitoringData":Lorg/altbeacon/beacon/service/MonitoringData;
    const/4 v1, 0x0

    .line 75
    .local v1, "rangingData":Lorg/altbeacon/beacon/service/RangingData;
    const-string/jumbo v2, "monitoringData"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p2

    .line 76
    check-cast v0, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 80
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 81
    :cond_1
    sget-object v2, Lorg/altbeacon/beacon/BeaconIntentProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;

    invoke-direct {v3, p0, v0, v1}, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;-><init>(Landroid/content/Context;Lorg/altbeacon/beacon/service/MonitoringData;Lorg/altbeacon/beacon/service/RangingData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 83
    :cond_2
    return-void

    .line 77
    :cond_3
    const-string/jumbo v2, "rangingData"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 78
    check-cast v1, Lorg/altbeacon/beacon/service/RangingData;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "monitoringData":Lorg/altbeacon/beacon/service/MonitoringData;
    const/4 v1, 0x0

    .line 60
    .local v1, "rangingData":Lorg/altbeacon/beacon/service/RangingData;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "monitoringData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "monitoringData":Lorg/altbeacon/beacon/service/MonitoringData;
    check-cast v0, Lorg/altbeacon/beacon/service/MonitoringData;

    .line 62
    .restart local v0    # "monitoringData":Lorg/altbeacon/beacon/service/MonitoringData;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "rangingData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rangingData":Lorg/altbeacon/beacon/service/RangingData;
    check-cast v1, Lorg/altbeacon/beacon/service/RangingData;

    .line 65
    .restart local v1    # "rangingData":Lorg/altbeacon/beacon/service/RangingData;
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 66
    :cond_1
    sget-object v2, Lorg/altbeacon/beacon/BeaconIntentProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;

    invoke-virtual {p0}, Lorg/altbeacon/beacon/BeaconIntentProcessor;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lorg/altbeacon/beacon/BeaconIntentProcessor$HandleRunnable;-><init>(Landroid/content/Context;Lorg/altbeacon/beacon/service/MonitoringData;Lorg/altbeacon/beacon/service/RangingData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 68
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2
.end method
