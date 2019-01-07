.class public final Lioe;
.super Ljava/lang/Object;
.source "H5EventDispatchHandler.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 15
    const-class v2, Lioe;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lioe;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "H5EvenDispatchHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lioe;->a:Landroid/os/Handler;

    .line 20
    :cond_0
    sget-object v1, Lioe;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
