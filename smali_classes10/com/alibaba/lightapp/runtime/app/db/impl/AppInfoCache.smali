.class public final Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;
.super Ljava/lang/Object;
.source "AppInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache$H5LruCache;
    }
.end annotation


# static fields
.field private static b:Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache$H5LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache$H5LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->a:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->c:Z

    .line 50
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->b:Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->b:Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;

    .line 34
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;->b:Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
