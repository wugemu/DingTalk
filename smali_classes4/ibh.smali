.class public Libh;
.super Ljava/lang/Object;
.source "GroupNickEventPoster.java"


# static fields
.field private static volatile c:Libh;


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Libh;->a:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Libh;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    return-void
.end method

.method public static a()Libh;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Libh;->c:Libh;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Libh;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Libh;->c:Libh;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Libh;

    invoke-direct {v0}, Libh;-><init>()V

    sput-object v0, Libh;->c:Libh;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Libh;->c:Libh;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Libh;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Libh;

    .prologue
    .line 35
    iget-object v0, p0, Libh;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alibaba/wukong/im/GroupNickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/im/GroupNickListener;

    .prologue
    .line 59
    monitor-enter p0

    if-nez p1, :cond_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Libh;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/alibaba/wukong/im/GroupNickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/wukong/im/GroupNickListener;

    .prologue
    .line 66
    monitor-enter p0

    if-nez p1, :cond_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Libh;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
