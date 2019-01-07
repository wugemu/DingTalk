.class public Lorg/altbeacon/beacon/startup/RegionBootstrap;
.super Ljava/lang/Object;
.source "RegionBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppStarter"


# instance fields
.field private application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

.field private beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

.field private beaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private disabled:Z

.field private regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private serviceConnected:Z


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Ljava/util/List;)V
    .locals 3
    .param p1, "application"    # Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/altbeacon/beacon/startup/BootstrapNotifier;",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 41
    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    .line 68
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 73
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    .line 74
    iput-object p2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 76
    new-instance v0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 77
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 78
    const-string/jumbo v0, "AppStarter"

    const-string/jumbo v1, "Waiting for BeaconService connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V
    .locals 3
    .param p1, "application"    # Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    .param p2, "region"    # Lorg/altbeacon/beacon/Region;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 41
    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    .line 50
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The BootstrapNotifier instance is returning null from its getApplicationContext() method.  Have you implemented this method?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-interface {p1}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 54
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    .line 58
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->bind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 59
    const-string/jumbo v0, "AppStarter"

    const-string/jumbo v1, "Waiting for BeaconService connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/startup/RegionBootstrap;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->application:Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/startup/RegionBootstrap;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    return-object v0
.end method

.method static synthetic access$302(Lorg/altbeacon/beacon/startup/RegionBootstrap;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/beacon/startup/RegionBootstrap;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    return p1
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/startup/RegionBootstrap;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-boolean v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    if-eqz v1, :cond_1

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppStarter"

    const-string/jumbo v2, "Can\'t add bootstrap region"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "AppStarter"

    const-string/jumbo v2, "Adding a region: service not yet Connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public disable()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 86
    iget-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    if-eqz v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disabled:Z

    .line 91
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 92
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    iget-object v3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v3, v1}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AppStarter"

    const-string/jumbo v3, "Can\'t stop bootstrap regions"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconConsumer:Lorg/altbeacon/beacon/BeaconConsumer;

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    goto :goto_0
.end method

.method public removeRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 4
    .param p1, "region"    # Lorg/altbeacon/beacon/Region;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-boolean v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->serviceConnected:Z

    if-eqz v1, :cond_1

    .line 129
    :try_start_0
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->beaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap;->regions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AppStarter"

    const-string/jumbo v2, "Can\'t stop bootstrap region"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "AppStarter"

    const-string/jumbo v2, "Removing a region: service not yet Connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
