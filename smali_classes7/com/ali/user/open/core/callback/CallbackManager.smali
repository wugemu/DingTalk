.class public Lcom/ali/user/open/core/callback/CallbackManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ali/user/open/core/callback/CallbackManager;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCallback(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2

    const-class v1, Lcom/ali/user/open/core/callback/CallbackManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/open/core/callback/CallbackManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerCallback(ILjava/lang/Object;)V
    .locals 3

    const-class v1, Lcom/ali/user/open/core/callback/CallbackManager;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "callback"

    invoke-static {p1, v0}, Lcom/ali/user/open/core/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/open/core/callback/CallbackManager;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregisterCallback(I)V
    .locals 2

    sget-object v0, Lcom/ali/user/open/core/callback/CallbackManager;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
