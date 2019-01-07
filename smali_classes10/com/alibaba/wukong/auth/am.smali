.class public Lcom/alibaba/wukong/auth/am;
.super Ljava/lang/Object;
.source "PushSyncEventNotifier.java"


# static fields
.field private static aL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lifl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/wukong/auth/am;->aN:Z

    return-void
.end method

.method public static a(Lifl;)V
    .locals 1
    .param p0, "payloadPushListener"    # Lifl;

    .prologue
    .line 30
    invoke-static {}, Lcom/alibaba/wukong/auth/am;->init()V

    .line 31
    if-nez p0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/am;->aL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/wukong/auth/am;->aL:Ljava/util/List;

    return-object v0
.end method

.method public static b(Lifl;)V
    .locals 1
    .param p0, "list"    # Lifl;

    .prologue
    .line 38
    sget-boolean v0, Lcom/alibaba/wukong/auth/am;->aN:Z

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    if-eqz p0, :cond_0

    .line 44
    sget-object v0, Lcom/alibaba/wukong/auth/am;->aL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lifj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lifj;>;"
    sget-boolean v0, Lcom/alibaba/wukong/auth/am;->aN:Z

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/alibaba/wukong/auth/am$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/auth/am$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static declared-synchronized init()V
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/alibaba/wukong/auth/am;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/wukong/auth/am;->aN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    monitor-exit v1

    return-void

    .line 24
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/am;->aL:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/alibaba/wukong/auth/ak;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ak;-><init>()V

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/wukong/auth/am;->aN:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
