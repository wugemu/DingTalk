.class public final Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/threadpool/TaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunnableAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;, "Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;->task:Ljava/lang/Runnable;

    .line 690
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;->result:Ljava/lang/Object;

    .line 691
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;, "Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 695
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 699
    .local p0, "this":Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;, "Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/threadpool/TaskRunner$RunnableAdapter;->task:Ljava/lang/Runnable;

    return-object v0
.end method
