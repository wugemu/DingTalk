.class public final Lfvl;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "ClearCacheHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lfow;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x3ef4

    const-class v2, Lfow;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lfvl;Lfow;)V
    .locals 9
    .param p0, "x0"    # Lfvl;
    .param p1, "x1"    # Lfow;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    .line 1056
    if-eqz p1, :cond_0

    .line 1060
    iget-object v0, p1, Lfow;->b:Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1061
    iget-object v2, p1, Lfow;->a:Ljava/lang/Integer;

    .line 3033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1062
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ClearCacheHandler.handle"

    aput-object v4, v3, v6

    const-string/jumbo v4, ", type = "

    aput-object v4, v3, v7

    .line 1064
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string/jumbo v5, ", orgId = "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 1065
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1062
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    packed-switch v2, :pswitch_data_0

    .line 1073
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "ClearCacheHandler.handle: invalid type: "

    aput-object v1, v0, v6

    .line 1074
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1073
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1069
    :pswitch_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->j()V

    .line 1070
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a()V

    goto :goto_0

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 3
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfow;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lfow;>;"
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 35
    const-string/jumbo v0, "ClearCacheHandler has received data"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    const-string/jumbo v0, "ClearCacheHandler.onReceived: list is null or empty"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->u(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "ClearCacheHandler"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfvl$1;

    invoke-direct {v1, p0, p1}, Lfvl$1;-><init>(Lfvl;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
