.class public final Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;
.super Ljava/lang/Object;
.source "RuntimeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;
    }
.end annotation


# static fields
.field private static b:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a:Ljava/util/Map;

    .line 13
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->b:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->b:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;

    .line 19
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->b:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
