.class Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupInfo"
.end annotation


# instance fields
.field public mConcurrents:I

.field public mFactorIncAtom:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mPaused:Z

.field public mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;",
            ">;"
        }
    .end annotation
.end field

.field public mWaitingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)V
    .locals 4
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->mConcurrents:I

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->mPaused:Z

    .line 368
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x5

    new-instance v2, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$TaskComparator;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$TaskComparator;-><init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->mWaitingTasks:Ljava/util/Queue;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->mRunningTasks:Ljava/util/List;

    .line 370
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$GroupInfo;->mFactorIncAtom:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
