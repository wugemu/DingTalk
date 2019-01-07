.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;
.super Ljava/lang/Object;
.source "RuntimeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformanceResourceTiming"
.end annotation


# instance fields
.field public connectEnd:J

.field public connectStart:J

.field public decodedBodySize:J

.field public domainLookupEnd:J

.field public domainLookupStart:J

.field public duration:J

.field public encodedBodySize:J

.field public entryType:J

.field public fetchStart:J

.field public initiatorType:J

.field public name:J

.field public redirectEnd:J

.field public redirectStart:J

.field public requestStart:J

.field public responseEnd:J

.field public responseStart:J

.field public secureConnectionStart:J

.field public startTime:J

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

.field public transferSize:J

.field public workerStart:J


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$PerformanceResourceTiming;->this$0:Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
