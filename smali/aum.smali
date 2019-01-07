.class public Laum;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static volatile b:Laum;


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Laum;->a:Z

    .line 15
    return-void
.end method

.method public static a()Laum;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Laum;->b:Laum;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Laum;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Laum;->b:Laum;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Laum;

    invoke-direct {v0}, Laum;-><init>()V

    sput-object v0, Laum;->b:Laum;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Laum;->b:Laum;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
