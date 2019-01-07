.class Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;
.super Ljava/lang/Object;
.source "RegionBootstrap.java"

# interfaces
.implements Lorg/altbeacon/beacon/BeaconConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/startup/RegionBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalBeaconConsumer"
.end annotation


# instance fields
.field private serviceIntent:Landroid/content/Intent;

.field final synthetic this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;Lorg/altbeacon/beacon/startup/RegionBootstrap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/altbeacon/beacon/startup/RegionBootstrap;
    .param p2, "x1"    # Lorg/altbeacon/beacon/startup/RegionBootstrap$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;-><init>(Lorg/altbeacon/beacon/startup/RegionBootstrap;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "arg2"    # I

    .prologue
    .line 170
    iput-object p1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->serviceIntent:Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onBeaconServiceConnect()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 149
    const-string/jumbo v2, "AppStarter"

    const-string/jumbo v3, "Activating background region monitoring"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v2}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v2

    iget-object v3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v3}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/altbeacon/beacon/BeaconManager;->addMonitorNotifier(Lorg/altbeacon/beacon/MonitorNotifier;)V

    .line 151
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v2, v5}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$302(Lorg/altbeacon/beacon/startup/RegionBootstrap;Z)Z

    .line 153
    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v2}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$400(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 154
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    const-string/jumbo v3, "AppStarter"

    const-string/jumbo v4, "Background region monitoring activated for region %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v3}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 156
    iget-object v3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v3}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/altbeacon/beacon/BeaconManager;->isBackgroundModeUninitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v3}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$200(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AppStarter"

    const-string/jumbo v3, "Can\'t set up bootstrap regions"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 190
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-static {v0}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$100(Lorg/altbeacon/beacon/startup/RegionBootstrap;)Lorg/altbeacon/beacon/startup/BootstrapNotifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/startup/BootstrapNotifier;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 191
    iget-object v0, p0, Lorg/altbeacon/beacon/startup/RegionBootstrap$InternalBeaconConsumer;->this$0:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->access$302(Lorg/altbeacon/beacon/startup/RegionBootstrap;Z)Z

    .line 192
    return-void
.end method
