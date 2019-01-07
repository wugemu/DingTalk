.class public Ldxq;
.super Ljava/lang/Object;
.source "GroupBillServiceAPIImpl.java"


# static fields
.field private static volatile a:Ldxq;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a()Ldxq;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Ldxq;->a:Ldxq;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Ldxq;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Ldxq;->a:Ldxq;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ldxq;

    invoke-direct {v0}, Ldxq;-><init>()V

    sput-object v0, Ldxq;->a:Ldxq;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Ldxq;->a:Ldxq;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
