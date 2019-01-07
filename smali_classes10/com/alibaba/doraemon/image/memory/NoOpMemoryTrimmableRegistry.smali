.class public Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;
.super Ljava/lang/Object;
.source "NoOpMemoryTrimmableRegistry.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;


# static fields
.field private static sInstance:Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;

    .line 25
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;->sInstance:Lcom/alibaba/doraemon/image/memory/NoOpMemoryTrimmableRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerMemoryTrimmable(Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;)V
    .locals 0
    .param p1, "trimmable"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;

    .prologue
    .line 30
    return-void
.end method

.method public unregisterMemoryTrimmable(Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;)V
    .locals 0
    .param p1, "trimmable"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;

    .prologue
    .line 34
    return-void
.end method
