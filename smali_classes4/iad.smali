.class public final Liad;
.super Ljava/lang/Object;
.source "EventPoster.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/StatusNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Liad;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Liad;->a:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alibaba/wukong/im/IMListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/IMListener;

    .prologue
    .line 28
    const-class v1, Liad;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 33
    .end local p0    # "listener":Lcom/alibaba/wukong/im/IMListener;
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 30
    .restart local p0    # "listener":Lcom/alibaba/wukong/im/IMListener;
    :cond_1
    :try_start_0
    instance-of v0, p0, Lcom/alibaba/wukong/im/StatusNotifyListener;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Liad;->a:Ljava/util/List;

    check-cast p0, Lcom/alibaba/wukong/im/StatusNotifyListener;

    .end local p0    # "listener":Lcom/alibaba/wukong/im/IMListener;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 1
    .param p0, "status"    # Lcom/alibaba/wukong/im/IMStatus;

    .prologue
    .line 57
    new-instance v0, Liad$2;

    invoke-direct {v0, p0}, Liad$2;-><init>(Lcom/alibaba/wukong/im/IMStatus;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/DeviceStatus;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Liad$1;

    invoke-direct {v0, p0}, Liad$1;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Lcom/alibaba/wukong/im/IMListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/wukong/im/IMListener;

    .prologue
    .line 36
    const-class v1, Liad;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 38
    :cond_1
    :try_start_0
    instance-of v0, p0, Lcom/alibaba/wukong/im/StatusNotifyListener;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Liad;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
