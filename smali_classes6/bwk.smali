.class public Lbwk;
.super Ljava/lang/Object;
.source "LiveSyncManager.java"


# static fields
.field private static volatile a:Lbwk;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a()Lbwk;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lbwk;->a:Lbwk;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lbwk;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lbwk;->a:Lbwk;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lbwk;

    invoke-direct {v0}, Lbwk;-><init>()V

    sput-object v0, Lbwk;->a:Lbwk;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lbwk;->a:Lbwk;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lbwh;

    invoke-direct {v0}, Lbwh;-><init>()V

    .line 32
    new-instance v0, Lbwl;

    invoke-direct {v0}, Lbwl;-><init>()V

    .line 33
    new-instance v0, Lbwe;

    invoke-direct {v0}, Lbwe;-><init>()V

    .line 34
    new-instance v0, Lbwd;

    invoke-direct {v0}, Lbwd;-><init>()V

    .line 35
    new-instance v0, Lbwi;

    invoke-direct {v0}, Lbwi;-><init>()V

    .line 37
    const-class v0, Lcom/alibaba/wukong/sync/SyncService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v2, Lbwj;

    invoke-direct {v2}, Lbwj;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 38
    return-void
.end method
