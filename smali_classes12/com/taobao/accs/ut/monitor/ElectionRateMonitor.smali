.class public Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "ElectionRateMonitor.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "accs"
    monitorPoint = "ele_succ_rate"
.end annotation


# instance fields
.field public eleVer:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public errorCode:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sdkVer:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    .line 17
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->eleVer:I

    .line 22
    const/16 v0, 0xd5

    iput v0, p0, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->sdkVer:I

    return-void
.end method
