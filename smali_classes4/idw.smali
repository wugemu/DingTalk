.class public final Lidw;
.super Ljava/lang/Object;
.source "UserTagEventPoster.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserTagListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lidw;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lidw;->a:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alibaba/wukong/im/UserTagListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/UserTagListener;

    .prologue
    .line 25
    const-class v1, Lidw;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 28
    :goto_0
    monitor-exit v1

    return-void

    .line 27
    :cond_0
    :try_start_0
    sget-object v0, Lidw;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/UserTagListObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/UserTagListObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Lidw$1;

    invoke-direct {v0, p0}, Lidw$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Lcom/alibaba/wukong/im/UserTagListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/UserTagListener;

    .prologue
    .line 31
    const-class v1, Lidw;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 34
    :goto_0
    monitor-exit v1

    return-void

    .line 33
    :cond_0
    :try_start_0
    sget-object v0, Lidw;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
