.class public Laeh;
.super Ljava/lang/Object;
.source "MailSubscribeDataSourceFactory.java"


# static fields
.field private static volatile a:Laeg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laeg;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Laeh;->a:Laeg;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Laeh;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Laeh;->a:Laeg;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Laei;

    invoke-direct {v0}, Laei;-><init>()V

    sput-object v0, Laeh;->a:Laeg;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Laeh;->a:Laeg;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
