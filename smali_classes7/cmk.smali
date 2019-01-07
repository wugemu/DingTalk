.class public Lcmk;
.super Ljava/lang/Object;
.source "DDAppRuntime.java"


# static fields
.field private static a:Lcmk;


# instance fields
.field private final b:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Lcmj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcmk;->b:Lfk;

    .line 12
    return-void
.end method

.method public static a()Lcmk;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 15
    const-class v1, Lcmk;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcmk;->a:Lcmk;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcmk;

    invoke-direct {v0}, Lcmk;-><init>()V

    sput-object v0, Lcmk;->a:Lcmk;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-object v0, Lcmk;->a:Lcmk;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcmj;
    .locals 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcmj;",
            ">;)",
            "Lcmj;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcmj;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcmk;->b:Lfk;

    monitor-enter v5

    .line 38
    :try_start_0
    iget-object v4, p0, Lcmk;->b:Lfk;

    invoke-virtual {v4, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcmj;

    .line 39
    .local v3, "manager":Lcmj;
    if-eqz v3, :cond_0

    .line 40
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v3    # "manager":Lcmj;
    :goto_0
    return-object v3

    .line 44
    .restart local v3    # "manager":Lcmj;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcmj;

    .line 45
    .local v2, "maanger":Lcmj;
    iget-object v4, p0, Lcmk;->b:Lfk;

    invoke-virtual {v4, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    monitor-exit v5

    move-object v3, v2

    goto :goto_0

    .line 47
    .end local v2    # "maanger":Lcmj;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    monitor-exit v5

    .line 51
    const/4 v3, 0x0

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "manager":Lcmj;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    iget-object v2, p0, Lcmk;->b:Lfk;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v1, p0, Lcmk;->b:Lfk;

    invoke-virtual {v1}, Lfk;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmj;

    .line 73
    .local v0, "manager":Lcmj;
    invoke-interface {v0}, Lcmj;->a()V

    goto :goto_0

    .line 76
    .end local v0    # "manager":Lcmj;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcmk;->b:Lfk;

    invoke-virtual {v1}, Lfk;->clear()V

    .line 76
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
