.class Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityQueue;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/enterprise/base/coordinator/Coordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StandaloneTask"
.end annotation


# instance fields
.field mPriorityQueue:I

.field final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mPriorityQueue:I

    .line 210
    iput-object p1, p0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mRunnable:Ljava/lang/Runnable;

    .line 211
    return-void
.end method


# virtual methods
.method public getQueuePriority()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mRunnable:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityQueue;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mRunnable:Ljava/lang/Runnable;

    check-cast v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityQueue;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityQueue;->getQueuePriority()I

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mPriorityQueue:I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->runWithTiming(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method
