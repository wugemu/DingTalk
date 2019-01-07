.class public final Lcom/alibaba/aether/api/Aether;
.super Ljava/lang/Object;
.source "Aether.java"


# static fields
.field static a:Lcom/alibaba/aether/api/Aether;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/aether/api/Aether;->b:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/aether/api/Aether;
    .locals 3

    .prologue
    .line 19
    const-class v1, Lcom/alibaba/aether/api/Aether;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/aether/api/Aether;->a:Lcom/alibaba/aether/api/Aether;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/alibaba/aether/api/Aether;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/aether/api/Aether;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/aether/api/Aether;->a:Lcom/alibaba/aether/api/Aether;

    .line 22
    :cond_0
    sget-object v0, Lcom/alibaba/aether/api/Aether;->a:Lcom/alibaba/aether/api/Aether;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 37
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 38
    return-object v0
.end method
