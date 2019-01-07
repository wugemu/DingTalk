.class public final Ljdh;
.super Ljava/lang/Object;
.source "DNSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdh$a;
    }
.end annotation


# static fields
.field private static g:Ljdh;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Z

.field d:Z

.field e:Ljdk;

.field volatile f:I

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljdh;->g:Ljdh;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljdh;->h:Ljava/lang/Object;

    iput-object v1, p0, Ljdh;->a:Landroid/content/Context;

    iput-object v1, p0, Ljdh;->b:Ljava/util/concurrent/ExecutorService;

    iput-boolean v2, p0, Ljdh;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdh;->d:Z

    iput-object v1, p0, Ljdh;->e:Ljdk;

    iput v2, p0, Ljdh;->f:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljdh;->h:Ljava/lang/Object;

    iput-object v0, p0, Ljdh;->a:Landroid/content/Context;

    iput-object v0, p0, Ljdh;->b:Ljava/util/concurrent/ExecutorService;

    iput-boolean v6, p0, Ljdh;->c:Z

    iput-boolean v7, p0, Ljdh;->d:Z

    iput-object v0, p0, Ljdh;->e:Ljdk;

    iput v6, p0, Ljdh;->f:I

    iput-object p1, p0, Ljdh;->a:Landroid/content/Context;

    iget-object v0, p0, Ljdh;->a:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Ljdn;->x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "HttpDNS"

    const-string/jumbo v2, "1.0.0"

    invoke-static {v1, v2}, Ljdo;->a(Ljava/lang/String;Ljava/lang/String;)Ljej;

    move-result-object v1

    invoke-static {v0, v1}, Ljdt;->a(Landroid/content/Context;Ljej;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string/jumbo v2, "com.autonavi.httpdns.HttpDnsManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static/range {v0 .. v5}, Ljbr;->a(Landroid/content/Context;Ljej;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljdh;->h:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Ljdh;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    move v1, v6

    :goto_2
    const-string/jumbo v2, "HttpDns"

    invoke-static {v0, v2, v1}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DNSManager"

    const-string/jumbo v2, "initHttpDns"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move v1, v7

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Ljdh;
    .locals 1

    sget-object v0, Ljdh;->g:Ljdh;

    if-nez v0, :cond_0

    new-instance v0, Ljdh;

    invoke-direct {v0, p0}, Ljdh;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljdh;->g:Ljdh;

    :cond_0
    sget-object v0, Ljdh;->g:Ljdh;

    return-object v0
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_2
    if-eqz v3, :cond_3

    if-eq v2, v4, :cond_3

    :goto_3
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "-1"

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ljdh;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Ljdh;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method final declared-synchronized a(Ljdk;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v6, 0x2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "http://apilocatesrc.amap.com/mobile/binary"

    iput-object v0, p1, Ljdk;->g:Ljava/lang/String;

    iget-object v0, p0, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljch;->a()Ljch;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljch;->a(Ljcm;Z)Ljcn;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    iget-object v2, p0, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v3, "HttpDNS"

    const-string/jumbo v4, "dns failed too much"

    invoke-static {v2, v3, v4}, Ljdu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "dns_faile_count_total"

    invoke-static {v2, v3, v4, v0, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    invoke-static {}, Ljdn;->x()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljdh;->h:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljdh;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Ljdh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljdh;->h:Ljava/lang/Object;

    const-string/jumbo v1, "getIpByHostAsync"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "apilocatesrc.amap.com"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v1, "HttpDns"

    invoke-static {v0, v1}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
