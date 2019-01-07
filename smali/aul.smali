.class public Laul;
.super Ljava/lang/Object;
.source "CalendarNotificationManager.java"


# static fields
.field private static volatile b:Laul;


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Laul;->a:Z

    .line 31
    return-void
.end method

.method public static a()Laul;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Laul;->b:Laul;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Laul;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Laul;->b:Laul;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Laul;

    invoke-direct {v0}, Laul;-><init>()V

    sput-object v0, Laul;->b:Laul;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Laul;->b:Laul;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
