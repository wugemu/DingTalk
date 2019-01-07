.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformanceMemory"
.end annotation


# instance fields
.field public jsHeapSizeLimit:J

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

.field public totalJSHeapSize:J

.field public usedJSHeapSize:J


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceMemory;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
