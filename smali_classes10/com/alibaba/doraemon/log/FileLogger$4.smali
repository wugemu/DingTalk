.class Lcom/alibaba/doraemon/log/FileLogger$4;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/log/FileLogger;->cloneLog(Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;

.field final synthetic val$from:Ljava/util/Date;

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$to:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    iput-object p2, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->val$from:Ljava/util/Date;

    iput-object p3, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->val$to:Ljava/util/Date;

    iput-object p4, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->val$os:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$200(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 380
    .local v0, "logFileDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 389
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    monitor-enter v2

    .line 390
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 391
    monitor-exit v2

    .line 394
    :goto_0
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 386
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->val$from:Ljava/util/Date;

    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->val$to:Ljava/util/Date;

    iget-object v4, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->val$os:Ljava/io/OutputStream;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/alibaba/doraemon/log/FileLogger;->access$600(Lcom/alibaba/doraemon/log/FileLogger;Ljava/io/File;Ljava/util/Date;Ljava/util/Date;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 389
    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    monitor-enter v2

    .line 390
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 391
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 389
    .end local v0    # "logFileDir":Ljava/io/File;
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    monitor-enter v2

    .line 390
    :try_start_4
    iget-object v3, p0, Lcom/alibaba/doraemon/log/FileLogger$4;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 391
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
