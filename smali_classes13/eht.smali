.class public Leht;
.super Ljava/lang/Object;
.source "DeviceServiceManager.java"


# static fields
.field private static volatile a:Leht;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Leht;->a:Leht;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Leht;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Leht;->a:Leht;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Leht;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Leht;->a:Leht;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Leht;

    invoke-direct {v0}, Leht;-><init>()V

    sput-object v0, Leht;->a:Leht;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Leht;->a:Leht;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
