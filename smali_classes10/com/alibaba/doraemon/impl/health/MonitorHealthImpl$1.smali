.class Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;
.super Ljava/lang/Object;
.source "MonitorHealthImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->init(Landroid/app/Application;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;->this$0:Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundSample()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;->this$0:Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->access$000(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->bgSampleStatistics()V

    .line 59
    return-void
.end method

.method public onEnterBackground()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;->this$0:Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->access$000(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->enterBGStatistics()V

    .line 54
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;->this$0:Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->access$000(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->enterFGStatistics()V

    .line 64
    return-void
.end method

.method public onForegroundSample()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl$1;->this$0:Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;->access$000(Lcom/alibaba/doraemon/impl/health/MonitorHealthImpl;)Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/StatisticsProxy;->fgSampleStatistics()V

    .line 69
    return-void
.end method
