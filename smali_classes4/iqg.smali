.class public Liqg;
.super Ljava/lang/Object;
.source "H5WSSessionManager.java"


# static fields
.field private static a:Liqg;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Liqj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liqg;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final a()Liqg;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Liqg;->a:Liqg;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Liqg;->a:Liqg;

    .line 26
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const-class v1, Liqg;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Liqg;->a:Liqg;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Liqg;

    invoke-direct {v0}, Liqg;-><init>()V

    sput-object v0, Liqg;->a:Liqg;

    .line 25
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Liqg;->a:Liqg;

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Liqj;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Liqg;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liqj;

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Liqj;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "webSocketSession"    # Liqj;

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liqg;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Liqg;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liqj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .local v0, "defaultWebSocketSession":Liqj;
    if-nez v0, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 43
    :goto_0
    monitor-exit p0

    return v1

    .line 1014
    :cond_0
    :try_start_1
    iget-object v1, v0, Liqj;->a:Ligm;

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, v0, Liqj;->a:Ligm;

    invoke-virtual {v1}, Ligm;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "defaultWebSocketSession":Liqj;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
