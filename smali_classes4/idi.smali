.class public Lidi;
.super Ljava/lang/Object;
.source "WukongRimetManager.java"


# static fields
.field private static volatile b:Lidi;


# instance fields
.field public a:Lidh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static a()Lidi;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lidi;->b:Lidi;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lidi;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lidi;->b:Lidi;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lidi;

    invoke-direct {v0}, Lidi;-><init>()V

    sput-object v0, Lidi;->b:Lidi;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lidi;->b:Lidi;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
