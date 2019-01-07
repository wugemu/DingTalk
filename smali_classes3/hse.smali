.class public final Lhse;
.super Ljava/lang/Object;
.source "MessageChannelManager.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lhse;


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lhsd;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhse;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhse;->a:Ljava/util/HashMap;

    .line 22
    iput-object p1, p0, Lhse;->d:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lhse;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lhse;->c:Lhse;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lhse;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lhse;->c:Lhse;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lhse;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lhse;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhse;->c:Lhse;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lhse;->c:Lhse;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lhsd;Ljava/lang/Object;)V
    .locals 8
    .param p1, "from"    # Lhsd;
    .param p2, "message"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    iget-object v6, p0, Lhse;->a:Ljava/util/HashMap;

    monitor-enter v6

    .line 82
    if-eqz p1, :cond_1

    .line 1031
    :try_start_0
    iget-object v1, p1, Lhsd;->a:Ljava/lang/String;

    .line 84
    .local v1, "channel":Ljava/lang/String;
    iget-object v5, p0, Lhse;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lhsd;>;>;"
    if-eqz v0, :cond_1

    .line 87
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 89
    .local v4, "var6":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 91
    .local v2, "messageChannelRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lhsd;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhsd;

    .line 92
    .local v3, "target":Lhsd;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    .line 2024
    iget-object v5, v3, Lhsd;->c:Lhsd$a;

    if-eqz v5, :cond_0

    .line 2025
    iget-object v5, v3, Lhsd;->c:Lhsd$a;

    invoke-interface {v5, p2}, Lhsd$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    .end local v2    # "messageChannelRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lhsd;>;"
    .end local v3    # "target":Lhsd;
    .end local v4    # "var6":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    :try_start_2
    const-string/jumbo v5, "MessageChannelManager"

    const-string/jumbo v7, "MessageChannelManager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lhsd;>;>;"
    .end local v1    # "channel":Ljava/lang/String;
    :cond_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
