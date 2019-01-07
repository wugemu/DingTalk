.class public Ldyd;
.super Ljava/lang/Object;
.source "IntelligentAPIImpl.java"


# static fields
.field private static volatile a:Ldyd;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a()Ldyd;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ldyd;->a:Ldyd;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Ldyd;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Ldyd;->a:Ldyd;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ldyd;

    invoke-direct {v0}, Ldyd;-><init>()V

    sput-object v0, Ldyd;->a:Ldyd;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Ldyd;->a:Ldyd;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
