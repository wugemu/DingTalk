.class public final Lekb;
.super Ljava/lang/Object;
.source "CommonApiIml.java"


# static fields
.field private static a:Lekb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lekb;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lekb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lekb;->a:Lekb;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lekb;

    invoke-direct {v0}, Lekb;-><init>()V

    sput-object v0, Lekb;->a:Lekb;

    .line 36
    :cond_0
    sget-object v0, Lekb;->a:Lekb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
