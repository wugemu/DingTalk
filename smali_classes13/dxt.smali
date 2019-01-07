.class public Ldxt;
.super Ljava/lang/Object;
.source "GroupRingAPIImpl.java"


# static fields
.field private static volatile a:Ldxt;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a()Ldxt;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Ldxt;->a:Ldxt;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Ldxt;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Ldxt;->a:Ldxt;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ldxt;

    invoke-direct {v0}, Ldxt;-><init>()V

    sput-object v0, Ldxt;->a:Ldxt;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Ldxt;->a:Ldxt;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
