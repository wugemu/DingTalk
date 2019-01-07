.class Lcom/alibaba/doraemon/log/FileLogger$6;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/log/FileLogger;->syncforceFlush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;

.field final synthetic val$finalMemSize:I

.field final synthetic val$finalMemoryFile:Landroid/os/MemoryFile;

.field final synthetic val$logContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    iput-object p2, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->val$finalMemoryFile:Landroid/os/MemoryFile;

    iput p3, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->val$finalMemSize:I

    iput-object p4, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->val$logContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->val$finalMemoryFile:Landroid/os/MemoryFile;

    iget v2, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->val$finalMemSize:I

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->val$logContext:Lcom/alibaba/doraemon/log/FileLogger$LogContext;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/log/FileLogger;->access$700(Lcom/alibaba/doraemon/log/FileLogger;Landroid/os/MemoryFile;ILcom/alibaba/doraemon/log/FileLogger$LogContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 526
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    monitor-enter v1

    .line 527
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 528
    monitor-exit v1

    .line 530
    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 526
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    monitor-enter v1

    .line 527
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$6;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 528
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
