.class public Lcom/taobao/accs/ut/monitor/SessionMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "SessionMonitor.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "accs"
    monitorPoint = "session"
.end annotation


# instance fields
.field public auth_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field

.field private close_connection_date:J

.field public close_connection_type:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public close_reasons:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public connect_type:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field private connection_start_date:J

.field public connection_stop_date:J

.field public fail_reasons:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isProxy:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public live_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 86400.0
        min = 0.0
    .end annotation
.end field

.field public ping_rec_times:I
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field

.field public ping_send_times:I
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field

.field public ret:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retry_times:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sdkv:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ssl_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field

.field public tcp_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 15000.0
        min = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    .line 13
    iput v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->fail_reasons:I

    .line 14
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_type:I

    .line 17
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connect_type:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->isProxy:Z

    .line 19
    const-string/jumbo v0, "213"

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->sdkv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCloseReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    return-object v0
.end method

.method public getConCloseDate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_date:J

    return-wide v0
.end method

.method public getConStopDate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    return-wide v0
.end method

.method public getRet()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    return v0
.end method

.method public onCloseConnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_date:J

    .line 58
    return-void
.end method

.method public onConnectStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_stop_date:J

    .line 54
    return-void
.end method

.method public onPingCBReceive()V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_rec_times:I

    .line 73
    return-void
.end method

.method public onSendPing()V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_send_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ping_send_times:I

    .line 69
    return-void
.end method

.method public onStartConnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connection_start_date:J

    .line 50
    return-void
.end method

.method public setCloseReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "closeReason"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_reasons:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCloseType(I)V
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->close_connection_type:I

    .line 62
    return-void
.end method

.method public setConnectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->connect_type:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setFailReason(I)V
    .locals 0
    .param p1, "failReason"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->fail_reasons:I

    .line 46
    return-void
.end method

.method public setRet(Z)V
    .locals 0
    .param p1, "ret"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->ret:Z

    .line 38
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/taobao/accs/ut/monitor/SessionMonitor;->retry_times:I

    .line 80
    return-void
.end method
