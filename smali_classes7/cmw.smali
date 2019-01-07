.class public final Lcmw;
.super Ljava/lang/Object;
.source "DDPopupWindowUtil.java"


# static fields
.field private static a:Lcmv;

.field private static b:Lcmv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcmv;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcmw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcmw;->a:Lcmv;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcmv;

    invoke-direct {v0}, Lcmv;-><init>()V

    sput-object v0, Lcmw;->a:Lcmv;

    .line 15
    :cond_0
    sget-object v0, Lcmw;->a:Lcmv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcmv;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcmw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcmw;->b:Lcmv;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcmv;

    invoke-direct {v0}, Lcmv;-><init>()V

    sput-object v0, Lcmw;->b:Lcmv;

    .line 22
    :cond_0
    sget-object v0, Lcmw;->b:Lcmv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
