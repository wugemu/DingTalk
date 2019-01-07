.class final Lcom/alibaba/doraemon/impl/trace/TraceImpl2$2;
.super Ljava/lang/Object;
.source "TraceImpl2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->initConsumerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2;->access$100()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;

    .line 81
    .local v0, "task":Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "task":Lcom/alibaba/doraemon/impl/trace/TraceImpl2$BuildWriteLogTask;
    :catch_0
    move-exception v1

    .line 86
    :cond_0
    return-void
.end method
