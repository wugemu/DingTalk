.class public Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "NetPerformanceMonitor.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "accs"
    monitorPoint = "netperformance"
.end annotation


# instance fields
.field public accs_sdk_version:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public accs_type:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public data_id:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field private enter_queue_date:J

.field public error_code:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public fail_reasons:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public in_queue_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field private receive_ack_date:J

.field public receive_to_call_back_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public ret:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retry_times:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public send_to_receive_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public service_id:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field private start_send_date:J

.field public start_to_enter_queue_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field public take_date:J

.field public talk_to_send_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field

.field private to_bz_date:J

.field public to_tnet_date:J

.field public total_time:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
        max = 60000.0
        min = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    .line 23
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->service_id:Ljava/lang/String;

    return-void
.end method

.method private computeTime(JJ)J
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 136
    const-wide/16 v0, 0x0

    .line 137
    .local v0, "result":J
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    .line 138
    sub-long v0, p3, p1

    .line 140
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    const/16 v0, 0xd5

    iput v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->accs_sdk_version:I

    .line 126
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_send_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_bz_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->total_time:J

    .line 127
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_send_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->enter_queue_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_to_enter_queue_time:J

    .line 128
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->enter_queue_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->in_queue_time:J

    .line 129
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->talk_to_send_time:J

    .line 130
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_ack_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->send_to_receive_time:J

    .line 131
    iget-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_ack_date:J

    iget-wide v2, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_bz_date:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->computeTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_to_call_back_time:J

    .line 132
    invoke-super {p0}, Lcom/taobao/accs/utl/BaseMonitor;->beforeCommit()Z

    move-result v0

    return v0
.end method

.method public onEnterQueueData()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->enter_queue_date:J

    .line 64
    return-void
.end method

.method public onRecAck()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->receive_ack_date:J

    .line 113
    return-void
.end method

.method public onSend()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->start_send_date:J

    .line 60
    return-void
.end method

.method public onSendData()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 72
    return-void
.end method

.method public onTakeFromQueue()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 68
    return-void
.end method

.method public onToBizDate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_bz_date:J

    .line 117
    return-void
.end method

.method public setConnType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->accs_type:I

    .line 121
    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->data_id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->device_id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFailReason(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->error_code:I

    .line 84
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    .line 106
    :goto_0
    :sswitch_0
    return-void

    .line 88
    :sswitch_1
    const-string/jumbo v0, "network fail"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :sswitch_2
    const-string/jumbo v0, "msg too large"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :sswitch_3
    const-string/jumbo v0, "app not bind"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :sswitch_4
    const-string/jumbo v0, "param error"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :sswitch_5
    const-string/jumbo v0, "service not available"

    invoke-virtual {p0, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_3
    .end sparse-switch
.end method

.method public setFailReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->fail_reasons:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->host:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setRet(Z)V
    .locals 1
    .param p1, "ret"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    const-string/jumbo v0, "y"

    :goto_0
    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->ret:Ljava/lang/String;

    .line 76
    return-void

    .line 75
    :cond_0
    const-string/jumbo v0, "n"

    goto :goto_0
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ServiceId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->service_id:Ljava/lang/String;

    .line 52
    return-void
.end method
