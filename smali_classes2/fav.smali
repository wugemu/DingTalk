.class public Lfav;
.super Ljava/lang/Object;
.source "OrgEcAddressServiceAPIImpl.java"


# static fields
.field private static a:Lfav;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lfav;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lfav;->a:Lfav;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lfav;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lfav;->a:Lfav;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lfav;

    invoke-direct {v0}, Lfav;-><init>()V

    sput-object v0, Lfav;->a:Lfav;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lfav;->a:Lfav;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
