.class public final Lglb;
.super Ljava/lang/Object;
.source "CSpaceCacheManager.java"


# static fields
.field public static a:Lglb;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lglb;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lglb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lglb;->a:Lglb;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lglb;

    invoke-direct {v0}, Lglb;-><init>()V

    sput-object v0, Lglb;->a:Lglb;

    .line 23
    :cond_0
    sget-object v0, Lglb;->a:Lglb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
