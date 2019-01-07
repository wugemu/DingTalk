.class Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/enterprise/base/coordinator/Coordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Runnable:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TRunnable;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator;, "Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator<TRunnable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRunnable;TRunnable;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator;, "Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator<TRunnable;>;"
    .local p1, "c1":Ljava/lang/Object;, "TRunnable;"
    .local p2, "c2":Ljava/lang/Object;, "TRunnable;"
    instance-of v2, p1, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    .local v0, "s1":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    move-object v1, p2

    .line 63
    check-cast v1, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;

    .line 65
    .local v1, "s2":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->getQueuePriority()I

    move-result v2

    invoke-virtual {v1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->getQueuePriority()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 66
    const/4 v2, 0x1

    .line 72
    .end local v0    # "s1":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    .end local v1    # "s2":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    :goto_0
    return v2

    .line 67
    .restart local v0    # "s1":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    .restart local v1    # "s2":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->getQueuePriority()I

    move-result v2

    invoke-virtual {v1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;->getQueuePriority()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 68
    const/4 v2, -0x1

    goto :goto_0

    .line 72
    .end local v0    # "s1":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    .end local v1    # "s2":Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
