.class public final Ljez;
.super Ljava/lang/Object;
.source "MybankSdk.java"


# static fields
.field private static a:Z

.field private static b:J

.field private static c:Ljey;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Ljez;->a:Z

    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Ljez;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 6

    .prologue
    .line 34
    const-class v1, Ljez;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Ljez;->b:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 35
    sput-wide v2, Ljez;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 39
    :cond_0
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljey;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "dependents"    # Ljey;

    .prologue
    .line 17
    const-class v1, Ljez;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 18
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 21
    :cond_0
    :try_start_1
    sget-wide v2, Ljez;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Ljez;->b:J

    .line 22
    sget-boolean v0, Ljez;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 31
    :goto_0
    monitor-exit v1

    return-void

    .line 26
    :cond_1
    :try_start_2
    sput-object p2, Ljez;->c:Ljey;

    .line 27
    sput-object p1, Ljez;->d:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Ljez;->a:Z

    .line 30
    invoke-static {p0}, Ljfj;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static b()Ljey;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ljez;->c:Ljey;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljez;->d:Ljava/lang/String;

    return-object v0
.end method
