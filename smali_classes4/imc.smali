.class public final Limc;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Limc;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 31
    const-class v1, Limc;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Limc;->a:Z

    .line 32
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v2, "MemoryUtil"

    const-string/jumbo v3, "mShouldDumpOOMHeap:false, just return."

    invoke-interface {v0, v2, v3}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v1

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
