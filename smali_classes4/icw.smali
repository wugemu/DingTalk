.class public final Licw;
.super Ljava/lang/Object;
.source "BlacklistEventPoster.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/BlacklistListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Licw;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Licw;->a:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alibaba/wukong/im/BlacklistListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/BlacklistListener;

    .prologue
    .line 18
    const-class v1, Licw;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 21
    :goto_0
    monitor-exit v1

    return-void

    .line 20
    :cond_0
    :try_start_0
    sget-object v0, Licw;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 18
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
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Blacklist;>;"
    sget-object v0, Licw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Licw$1;

    invoke-direct {v0, p0}, Licw$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Lcom/alibaba/wukong/im/BlacklistListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/BlacklistListener;

    .prologue
    .line 24
    const-class v1, Licw;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 27
    :goto_0
    monitor-exit v1

    return-void

    .line 26
    :cond_0
    :try_start_0
    sget-object v0, Licw;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
