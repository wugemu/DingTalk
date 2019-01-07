.class final Ljix$1;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljix;->a(Lcom/taobao/accs/data/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/Message;

.field final synthetic b:Ljix;


# direct methods
.method constructor <init>(Ljix;Lcom/taobao/accs/data/Message;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ljix$1;->b:Ljix;

    iput-object p2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 90
    :cond_0
    const/4 v7, 0x1

    .line 91
    .local v7, "sendSucc":Z
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v10

    .line 93
    .local v10, "type":I
    :try_start_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_1
    const/4 v0, 0x1

    if-ne v10, v0, :cond_14

    .line 97
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v0, :cond_6

    .line 98
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    if-nez v7, :cond_4

    .line 142
    const/4 v0, 0x1

    if-ne v10, v0, :cond_15

    .line 144
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljix;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    :cond_2
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 147
    :cond_3
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget v0, v0, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 148
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "resend"

    const-string/jumbo v2, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 155
    :cond_4
    :goto_1
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSucc"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .end local v7    # "sendSucc":Z
    .end local v10    # "type":I
    :cond_5
    :goto_2
    return-void

    .line 100
    .restart local v7    # "sendSucc":Z
    .restart local v10    # "type":I
    :cond_6
    :try_start_1
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v1, v2, v4, v5}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v8

    .line 101
    .local v8, "session":Lanet/channel/Session;
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    iget-object v1, p0, Ljix$1;->b:Ljix;

    invoke-virtual {v0, v1}, Lanet/channel/SessionCenter;->setDataReceiveCb(Lhz;)Z

    .line 102
    if-eqz v8, :cond_13

    .line 103
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v1, p0, Ljix$1;->b:Ljix;

    iget-object v1, v1, Ljix;->b:Landroid/content/Context;

    iget-object v2, p0, Ljix$1;->b:Ljix;

    iget v2, v2, Ljix;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/data/Message;->build(Landroid/content/Context;I)[B

    move-result-object v6

    .line 104
    .local v6, "data":[B
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    const-string/jumbo v1, "InAppConnection"

    const-string/jumbo v2, "send data "

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "len"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez v6, :cond_b

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string/jumbo v4, "dataId"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v4}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "command"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v4, v4, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, " host"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v4, v4, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_7
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->setSendTime(J)V

    .line 113
    array-length v0, v6

    const/16 v1, 0x4000

    if-le v0, v1, :cond_c

    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_c

    .line 114
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 135
    .end local v6    # "data":[B
    .end local v8    # "session":Lanet/channel/Session;
    :catch_0
    move-exception v9

    .line 137
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "send_fail"

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v2, v2, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    const-string/jumbo v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljix$1;->b:Ljix;

    iget v5, v5, Ljix;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "InAppConnection"

    const-string/jumbo v1, "sendMessage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-nez v7, :cond_a

    .line 142
    const/4 v0, 0x1

    if-ne v10, v0, :cond_16

    .line 144
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljix;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 145
    :cond_8
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 147
    :cond_9
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget v0, v0, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 148
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "resend"

    const-string/jumbo v2, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 155
    :cond_a
    :goto_4
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSucc"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 105
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v6    # "data":[B
    .restart local v8    # "session":Lanet/channel/Session;
    :cond_b
    :try_start_3
    array-length v0, v6

    goto/16 :goto_3

    .line 116
    :cond_c
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v1}, Ljip;->a(Lcom/taobao/accs/data/Message;)V

    .line 117
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v0, v0, Lcom/taobao/accs/data/Message;->isAck:Z

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->e:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_d
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v0

    const/16 v1, 0xc8

    invoke-virtual {v8, v0, v6, v1}, Lanet/channel/Session;->a(I[BI)V

    .line 121
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 122
    iget-object v0, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 124
    :cond_e
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget v2, v2, Lcom/taobao/accs/data/Message;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljix;->a(Ljava/lang/String;J)V

    .line 125
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v11, v0, Ljix;->c:Ljip;

    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v1, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lic;->j()Z

    move-result v2

    iget-object v3, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget-object v3, v3, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v6

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v11, v0}, Ljip;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 141
    .end local v6    # "data":[B
    .end local v8    # "session":Lanet/channel/Session;
    :catchall_0
    move-exception v0

    if-nez v7, :cond_11

    .line 142
    const/4 v1, 0x1

    if-ne v10, v1, :cond_17

    .line 144
    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Ljix$1;->b:Ljix;

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljix;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 145
    :cond_f
    iget-object v1, p0, Ljix$1;->b:Ljix;

    iget-object v1, v1, Ljix;->c:Ljip;

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v3, -0xb

    invoke-virtual {v1, v2, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 147
    :cond_10
    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    iget v1, v1, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 148
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "resend"

    const-string/jumbo v3, "total_accs"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 155
    :cond_11
    :goto_5
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 156
    const-string/jumbo v1, "InAppConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSucc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    throw v0

    .line 128
    .restart local v8    # "session":Lanet/channel/Session;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 132
    .end local v8    # "session":Lanet/channel/Session;
    :cond_14
    const/4 v7, 0x1

    .line 133
    :try_start_4
    const-string/jumbo v0, "InAppConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "skip msg type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 151
    :cond_15
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .restart local v9    # "t":Ljava/lang/Throwable;
    :cond_16
    iget-object v0, p0, Ljix$1;->b:Ljix;

    iget-object v0, v0, Ljix;->c:Ljip;

    iget-object v1, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_4

    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_17
    iget-object v1, p0, Ljix$1;->b:Ljix;

    iget-object v1, v1, Ljix;->c:Ljip;

    iget-object v2, p0, Ljix$1;->a:Lcom/taobao/accs/data/Message;

    const/16 v3, -0xb

    invoke-virtual {v1, v2, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto :goto_5
.end method
