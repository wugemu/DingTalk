.class public Liht;
.super Ljava/lang/Object;
.source "MonitorPrinterFactory.java"


# static fields
.field private static a:Lihs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lihs;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Liht;->a:Lihs;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Liht;->a:Lihs;

    .line 26
    :goto_0
    return-object v0

    .line 17
    :cond_0
    const-class v1, Liht;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Liht;->a:Lihs;

    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Liht;->a:Lihs;

    monitor-exit v1

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 21
    :cond_1
    :try_start_1
    invoke-static {}, Lihm;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-static {}, Lihm;->f()Lihs;

    move-result-object v0

    sput-object v0, Liht;->a:Lihs;

    .line 26
    :goto_1
    sget-object v0, Liht;->a:Lihs;

    monitor-exit v1

    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Lihr;

    invoke-direct {v0}, Lihr;-><init>()V

    sput-object v0, Liht;->a:Lihs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
