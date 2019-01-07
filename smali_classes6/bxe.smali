.class public Lbxe;
.super Ljava/lang/Object;
.source "LvServiceImpl.java"


# static fields
.field private static volatile b:Lbxe;


# instance fields
.field public a:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Liab;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Liab;-><init>(I)V

    iput-object v0, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    .line 79
    return-void
.end method

.method public static a()Lbxe;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lbxe;->b:Lbxe;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lbxe;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lbxe;->b:Lbxe;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lbxe;

    invoke-direct {v0}, Lbxe;-><init>()V

    sput-object v0, Lbxe;->b:Lbxe;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lbxe;->b:Lbxe;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lbua;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lbua;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbua;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 370
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/ApplyForWheatRspObject;>;"
    new-instance v0, Lbxe$16;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$16;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbua;)V

    .line 376
    invoke-virtual {v0}, Lbxe$16;->start()V

    .line 377
    return-void
.end method

.method public final a(Lbuh;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lbuh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuh;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 381
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/CancelApplyWheatRspObject;>;"
    new-instance v0, Lbxe$17;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$17;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbuh;)V

    .line 387
    invoke-virtual {v0}, Lbxe$17;->start()V

    .line 388
    return-void
.end method

.method public final a(Lbun;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lbun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbun;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lbxg;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 282
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxg;>;"
    new-instance v0, Lbxe$8;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$8;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbun;)V

    .line 288
    invoke-virtual {v0}, Lbxe$8;->start()V

    .line 289
    return-void
.end method

.method public final a(Lbvc;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvc;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lbxh;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 392
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxh;>;"
    new-instance v0, Lbxe$18;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$18;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbvc;)V

    .line 398
    invoke-virtual {v0}, Lbxe$18;->start()V

    .line 399
    return-void
.end method

.method public final a(Lbvy;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lbvy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvy;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lbxj;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 271
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxj;>;"
    new-instance v0, Lbxe$7;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$7;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbvy;)V

    .line 277
    invoke-virtual {v0}, Lbxe$7;->start()V

    .line 278
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 94
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    new-instance v0, Lbxe$1;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$1;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/MTopReqObject;)V

    .line 100
    invoke-virtual {v0}, Lbxe$1;->start()V

    .line 101
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 139
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveRspObject;>;"
    new-instance v0, Lbxe$32;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$32;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;)V

    .line 146
    invoke-virtual {v0}, Lbxe$32;->start()V

    .line 147
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 202
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;>;"
    new-instance v0, Lbxe$2;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$2;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsReqObject;)V

    .line 209
    invoke-virtual {v0}, Lbxe$2;->start()V

    .line 210
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p1, "req"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 259
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersRspObject;>;"
    new-instance v0, Lbxe$6;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbxe$6;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/android/dingtalk/livebase/model/ListLiveViewersReqObject;)V

    .line 266
    invoke-virtual {v0}, Lbxe$6;->start()V

    .line 267
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 151
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/live/rpc/model/LiveDetailObject;>;"
    new-instance v0, Lbxe$33;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lbxe$33;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lbxe$33;->start()V

    .line 158
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 214
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;>;"
    new-instance v0, Lbxe$3;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lbxe$3;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lbxe$3;->start()V

    .line 221
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 480
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    new-instance v0, Lbxe$27;

    const/4 v3, 0x0

    iget-object v4, p0, Lbxe;->a:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lbxe$27;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Lbxe$27;->start()V

    .line 487
    return-void
.end method
