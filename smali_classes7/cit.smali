.class public final Lcit;
.super Ljava/lang/Object;
.source "WifiScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcit$b;,
        Lcit$a;
    }
.end annotation


# static fields
.field private static f:Lcit;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcit$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field c:J

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcit$b;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcit;->a:Ljava/util/Set;

    .line 43
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcit;->b:J

    .line 46
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcit;->c:J

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcit;->d:Ljava/util/List;

    .line 158
    iget-object v1, p0, Lcit;->e:Lcit$b;

    if-nez v1, :cond_0

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcit$b;

    invoke-direct {v1, p0}, Lcit$b;-><init>(Lcit;)V

    iput-object v1, p0, Lcit;->e:Lcit$b;

    .line 161
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcit;->e:Lcit$b;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcit;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcit;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcit;->f:Lcit;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcit;

    invoke-direct {v0}, Lcit;-><init>()V

    sput-object v0, Lcit;->f:Lcit;

    .line 58
    :cond_0
    sget-object v0, Lcit;->f:Lcit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 6
    .param p1, "validTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v1, p0, Lcit;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcit;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcit;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcit;->d:Ljava/util/List;

    .line 136
    :cond_0
    return-object v0
.end method

.method public final a(Lcit$a;J)V
    .locals 8
    .param p1, "listener"    # Lcit$a;
    .param p2, "validCacheInterval"    # J

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcit;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcit;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcit;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcit;->c:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, p2

    if-gtz v1, :cond_1

    .line 89
    const-string/jumbo v1, "dingtalkbase"

    const-string/jumbo v2, "wifiscan"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "cur:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " cache:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcit;->c:J

    .line 90
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " interval:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 91
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 89
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcit;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Lcit$a;->onDataReceiver(Ljava/util/List;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcit;->a:Ljava/util/Set;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v1, p0, Lcit;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcit;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_2
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_3

    .line 105
    :try_start_2
    iget-object v1, p0, Lcit;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    monitor-exit v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 111
    :cond_3
    const-string/jumbo v1, "dingtalkbase"

    const-string/jumbo v3, "wifiscan"

    const-string/jumbo v4, "wifiManager is null"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcit$a;->onDataReceiver(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
