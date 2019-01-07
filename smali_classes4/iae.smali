.class public abstract Liae;
.super Ljava/lang/Object;
.source "IMTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liae$b;,
        Liae$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static mMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private mNeedAfterRpc:Z

.field private mTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Liae;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "needAfterRpc"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<-TT;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Liae;, "Liae<TV;TT;>;"
    .local p1, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Liae;->mTimeout:Z

    .line 37
    iput-boolean p2, p0, Liae;->mNeedAfterRpc:Z

    .line 38
    iput-object p1, p0, Liae;->mListener:Lcom/alibaba/wukong/Callback;

    .line 39
    iput-object p3, p0, Liae;->mExecutor:Ljava/util/concurrent/Executor;

    .line 40
    return-void
.end method

.method static synthetic access$000(Liae;)Z
    .locals 1
    .param p0, "x0"    # Liae;

    .prologue
    .line 29
    iget-boolean v0, p0, Liae;->mNeedAfterRpc:Z

    return v0
.end method

.method static synthetic access$100(Liae;)Z
    .locals 1
    .param p0, "x0"    # Liae;

    .prologue
    .line 29
    iget-boolean v0, p0, Liae;->mTimeout:Z

    return v0
.end method

.method static synthetic access$102(Liae;Z)Z
    .locals 0
    .param p0, "x0"    # Liae;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Liae;->mTimeout:Z

    return p1
.end method

.method static synthetic access$200(Liae;Liae$b;)V
    .locals 0
    .param p0, "x0"    # Liae;
    .param p1, "x1"    # Liae$b;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Liae;->postEvent(Liae$b;)V

    return-void
.end method

.method static synthetic access$300(Liae;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Liae;

    .prologue
    .line 29
    iget-object v0, p0, Liae;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Liae;)Lcom/alibaba/wukong/Callback;
    .locals 1
    .param p0, "x0"    # Liae;

    .prologue
    .line 29
    iget-object v0, p0, Liae;->mListener:Lcom/alibaba/wukong/Callback;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Liae;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private postEvent(Liae$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<TV;TT;>.b;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    .local p0, "this":Liae;, "Liae<TV;TT;>;"
    .local p1, "result":Liae$b;, "Liae<TV;TT;>.b;"
    iget-boolean v0, p0, Liae;->mTimeout:Z

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Liae;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Liae$a;

    invoke-direct {v1, p0, p1}, Liae$a;-><init>(Liae;Liae$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public onAfterRpc(Liae$b;)Liae$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liae",
            "<TV;TT;>.b;)",
            "Liae",
            "<TV;TT;>.b;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Liae;, "Liae<TV;TT;>;"
    .local p1, "rpcResult":Liae$b;, "Liae<TV;TT;>.b;"
    return-object p1
.end method

.method public onBeforeRpc()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Liae;, "Liae<TV;TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 43
    .local p0, "this":Liae;, "Liae<TV;TT;>;"
    const/4 v0, 0x0

    .line 45
    .local v0, "trace1":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[TAG] IMTask"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 46
    iget-object v1, p0, Liae;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Liae$1;

    invoke-direct {v2, p0}, Liae$1;-><init>(Liae;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 134
    throw v1
.end method
