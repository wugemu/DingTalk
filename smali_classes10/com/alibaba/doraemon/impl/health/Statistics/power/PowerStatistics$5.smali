.class Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;
.super Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;
.source "PowerStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-direct {p0}, Lcom/alibaba/doraemon/threadpool/ThreadMonitorTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterThreadExecute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$700(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$700(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    .line 293
    .local v6, "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    if-eqz v6, :cond_1

    .line 295
    instance-of v0, p1, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$CallableWrapper;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/alibaba/doraemon/impl/trace/TraceIdTransmitter$RunnableWrapper;

    if-eqz v0, :cond_2

    .line 297
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "name":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v6, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->start:J

    sub-long v8, v0, v4

    .line 304
    .local v8, "useTime":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$400(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;

    move-result-object v0

    const-string/jumbo v1, "detail"

    const-string/jumbo v2, "DRThread"

    long-to-double v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/health/trace/CountLogHandler;->aggregateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 310
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    .end local v8    # "useTime":J
    :cond_1
    return-void

    .line 299
    .restart local v6    # "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public onBeforeThreadExecute(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 280
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;-><init>()V

    .line 281
    .local v0, "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;->start:J

    .line 283
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$700(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v0    # "info":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$TimeInfo;
    :cond_0
    return-void
.end method

.method public onThreadCanceled(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$700(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$5;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$700(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    return-void
.end method

.method public onThreadStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "callable"    # Ljava/lang/Object;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 274
    return-void
.end method
