.class Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# instance fields
.field private isCancelled:Z

.field private mCallable:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;

.field private mCallback:Landroid/os/Handler$Callback;

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field private mPriority:Lcom/alibaba/doraemon/Priority;

.field private mPrioritySequence:I

.field private mStats:I

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->this$0:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->isCancelled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->isCancelled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mCallable:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;)Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mCallable:Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$CallableWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Landroid/os/Handler$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # Landroid/os/Handler$Callback;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mCallback:Landroid/os/Handler$Callback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Lcom/alibaba/doraemon/Priority;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mPriority:Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/Priority;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mPriority:Lcom/alibaba/doraemon/Priority;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mStats:I

    return v0
.end method

.method static synthetic access$502(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # I

    .prologue
    .line 673
    iput p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mStats:I

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;

    .prologue
    .line 673
    iget v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mPrioritySequence:I

    return v0
.end method

.method static synthetic access$702(Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;
    .param p1, "x1"    # I

    .prologue
    .line 673
    iput p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$Task;->mPrioritySequence:I

    return p1
.end method
