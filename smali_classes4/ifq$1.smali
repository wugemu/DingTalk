.class final Lifq$1;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "SyncContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lifq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lifq;


# direct methods
.method constructor <init>(Lifq;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lifq$1;->a:Lifq;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lifq$1;->a:Lifq;

    const/4 v1, 0x1

    .line 1017
    iput-boolean v1, v0, Lifq;->a:Z

    .line 82
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v1

    .line 1123
    monitor-enter v1

    .line 1124
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    sget-object v2, Lcom/alibaba/wukong/sync/upstream/g$b;->q:Lcom/alibaba/wukong/sync/upstream/g$b;

    if-ne v0, v2, :cond_0

    .line 1125
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$b;->p:Lcom/alibaba/wukong/sync/upstream/g$b;

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    .line 1126
    invoke-virtual {v1}, Lcom/alibaba/wukong/sync/upstream/g;->d()V

    .line 1128
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDisconnected(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lifq$1;->a:Lifq;

    const/4 v1, 0x0

    .line 2017
    iput-boolean v1, v0, Lifq;->a:Z

    .line 88
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v1

    .line 2112
    monitor-enter v1

    .line 2113
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    sget-object v2, Lcom/alibaba/wukong/sync/upstream/g$b;->p:Lcom/alibaba/wukong/sync/upstream/g$b;

    if-ne v0, v2, :cond_0

    .line 2114
    sget-object v0, Lcom/alibaba/wukong/sync/upstream/g$b;->q:Lcom/alibaba/wukong/sync/upstream/g$b;

    sput-object v0, Lcom/alibaba/wukong/sync/upstream/g;->b:Lcom/alibaba/wukong/sync/upstream/g$b;

    .line 2115
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
