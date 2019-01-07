.class public final Lfaw;
.super Ljava/lang/Object;
.source "OrgExtFieldAPIImpl.java"


# static fields
.field private static a:Lfaw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lfaw;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lfaw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfaw;->a:Lfaw;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lfaw;

    invoke-direct {v0}, Lfaw;-><init>()V

    sput-object v0, Lfaw;->a:Lfaw;

    .line 28
    :cond_0
    sget-object v0, Lfaw;->a:Lfaw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
