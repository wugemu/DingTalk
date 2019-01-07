.class Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;
.super Ljava/lang/Object;
.source "FileLoggerWrapper2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

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
    .line 59
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->access$100(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->access$200(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->access$300()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->access$200(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->access$000(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)Lcom/alibaba/doraemon/log/FileLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/log/FileLogger;->close()V

    .line 66
    const-string/jumbo v1, "CRASHMONITOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/crash/CrashMonitor;

    .line 67
    .local v0, "crashMonitor":Lcom/alibaba/doraemon/crash/CrashMonitor;
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2$2;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;->access$400(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper2;)Lcom/alibaba/doraemon/crash/CrashHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/crash/CrashMonitor;->unregisterCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V

    .line 69
    :cond_1
    return-void

    .line 63
    .end local v0    # "crashMonitor":Lcom/alibaba/doraemon/crash/CrashMonitor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
