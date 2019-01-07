.class public Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;
.super Ljava/lang/Object;
.source "DoraemonMemTrimRegImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/MemoryTrimmableRegistry;


# static fields
.field private static sInstance:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;


# instance fields
.field private mTrimmableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->mTrimmableList:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V

    .line 31
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 32
    .local v0, "monitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl$1;-><init>(Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerMemStateListener(Lcom/alibaba/doraemon/lifecycle/MemStateListener;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->mTrimmableList:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v1, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->sInstance:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->sInstance:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;

    .line 26
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->sInstance:Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerMemoryTrimmable(Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;)V
    .locals 1
    .param p1, "trimmable"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->mTrimmableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public unregisterMemoryTrimmable(Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;)V
    .locals 1
    .param p1, "trimmable"    # Lcom/alibaba/doraemon/image/memory/MemoryTrimmable;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/DoraemonMemTrimRegImpl;->mTrimmableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method
