.class public final Lfbb;
.super Ljava/lang/Object;
.source "RECRCandidateImpl.java"


# static fields
.field private static a:Lfbb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lfbb;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lfbb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfbb;->a:Lfbb;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lfbb;

    invoke-direct {v0}, Lfbb;-><init>()V

    sput-object v0, Lfbb;->a:Lfbb;

    .line 37
    :cond_0
    sget-object v0, Lfbb;->a:Lfbb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
