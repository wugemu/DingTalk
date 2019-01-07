.class public final Lhdv;
.super Ljava/lang/Object;
.source "WebViewController.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xa

    sput v0, Lhdv;->a:I

    .line 12
    const/4 v0, 0x0

    sput v0, Lhdv;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 3

    .prologue
    .line 15
    const-class v1, Lhdv;

    monitor-enter v1

    :try_start_0
    sget v0, Lhdv;->b:I

    sget v2, Lhdv;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 19
    const-class v1, Lhdv;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lhdv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget v0, Lhdv;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lhdv;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v0, 0x1

    .line 24
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Z
    .locals 2

    .prologue
    .line 29
    const-class v1, Lhdv;

    monitor-enter v1

    :try_start_0
    sget v0, Lhdv;->b:I

    if-lez v0, :cond_0

    .line 30
    sget v0, Lhdv;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lhdv;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 v0, 0x1

    .line 34
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
