.class public Ldes;
.super Ljava/lang/Object;
.source "ChatMsgListGuideController.java"


# static fields
.field private static volatile b:Ldes;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldes;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    return-void
.end method

.method public static a()Ldes;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Ldes;->b:Ldes;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Ldes;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Ldes;->b:Ldes;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ldes;

    invoke-direct {v0}, Ldes;-><init>()V

    sput-object v0, Ldes;->b:Ldes;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Ldes;->b:Ldes;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
