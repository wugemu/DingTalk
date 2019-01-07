.class public Ljsb;
.super Ljava/lang/Object;
.source "WMLRuntime.java"

# interfaces
.implements Ljpj;


# static fields
.field private static d:Ljsb;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/windmill/rt/runtime/WMLAppType;",
            "Ljsa;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljrz;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Handler;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljpm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Ljsb;->a:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljsb;->b:Ljava/util/Map;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ljsb;->c:Landroid/os/Handler;

    .line 39
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v0

    .line 1049
    iput-object p0, v0, Ljpl;->b:Ljpj;

    .line 40
    return-void
.end method

.method public static a()Ljsb;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Ljsb;->d:Ljsb;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Ljsb;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Ljsb;->d:Ljsb;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljsb;

    invoke-direct {v0}, Ljsb;-><init>()V

    sput-object v0, Ljsb;->d:Ljsb;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Ljsb;->d:Ljsb;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLAppType;Ljpm;Ljse;)Ljrz;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/taobao/windmill/rt/runtime/WMLAppType;
    .param p3, "perf"    # Ljpm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "pagePerformance"    # Ljse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v2, p0, Ljsb;->a:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljsb;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsa;

    .local v0, "factory":Ljsa;
    if-eqz v0, :cond_1

    .line 64
    if-eqz p3, :cond_0

    .line 65
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ljsb;->e:Ljava/lang/ref/WeakReference;

    .line 66
    iget-object v2, p0, Ljsb;->e:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, p1, v2}, Ljsa;->a(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Ljrz;

    move-result-object v1

    .line 72
    .local v1, "instance":Ljrz;
    :goto_0
    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1, p4}, Ljrz;->a(Ljse;)V

    .line 74
    iget-object v2, p0, Ljsb;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljrz;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v0    # "factory":Ljsa;
    .end local v1    # "instance":Ljrz;
    :goto_1
    return-object v1

    .line 69
    .restart local v0    # "factory":Ljsa;
    :cond_0
    invoke-interface {v0, p1}, Ljsa;->a(Landroid/content/Context;)Ljrz;

    move-result-object v1

    .restart local v1    # "instance":Ljrz;
    goto :goto_0

    .line 78
    .end local v0    # "factory":Ljsa;
    .end local v1    # "instance":Ljrz;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Ljrz;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Ljsb;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrz;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ljsb;->a(Ljava/lang/String;)Ljrz;

    move-result-object v0

    .line 125
    .local v0, "instance":Ljrz;
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p2}, Ljrz;->d(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 119
    .line 1102
    invoke-virtual {p0, p1}, Ljsb;->a(Ljava/lang/String;)Ljrz;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_0

    .line 1104
    invoke-interface {v0, p2, p3, p4}, Ljrz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method
