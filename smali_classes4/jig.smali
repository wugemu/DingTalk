.class public abstract Ljig;
.super Ljava/lang/Object;
.source "AccsAbstractDataListener.java"

# interfaces
.implements Ljih;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljih;)I
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Ljih;

    .prologue
    .line 57
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 58
    :cond_0
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "onReceiveData listener or context null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const/4 v2, 0x2

    .line 161
    :goto_0
    return v2

    .line 61
    :cond_1
    if-eqz p1, :cond_3

    .line 66
    const-string/jumbo v21, ""

    .line 70
    .local v21, "serviceId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "command"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 71
    .local v15, "command":I
    const-string/jumbo v2, "errorCode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 72
    .local v6, "errorCode":I
    const-string/jumbo v2, "userInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 73
    .local v22, "userId":Ljava/lang/String;
    const-string/jumbo v2, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "dataId":Ljava/lang/String;
    const-string/jumbo v2, "serviceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 75
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceiveData dataId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_2
    if-lez v15, :cond_3

    .line 80
    invoke-static {}, Ljjo;->a()Ljjo;

    const v2, 0x101d1

    const-string/jumbo v3, "MsgToBuss5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "commandId="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "serviceId="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, " dataId="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0xd5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v3, v4, v8, v12}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "to_buss"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "3commandId="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "serviceId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v2, v3, v4, v0, v1}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 87
    sparse-switch v15, :sswitch_data_0

    .line 161
    .end local v5    # "dataId":Ljava/lang/String;
    .end local v6    # "errorCode":I
    .end local v15    # "command":I
    .end local v21    # "serviceId":Ljava/lang/String;
    .end local v22    # "userId":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 89
    .restart local v5    # "dataId":Ljava/lang/String;
    .restart local v6    # "errorCode":I
    .restart local v15    # "command":I
    .restart local v21    # "serviceId":Ljava/lang/String;
    .restart local v22    # "userId":Ljava/lang/String;
    :sswitch_0
    invoke-static/range {p1 .. p1}, Ljig;->b(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6, v2}, Ljih;->onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 151
    .end local v5    # "dataId":Ljava/lang/String;
    .end local v6    # "errorCode":I
    .end local v15    # "command":I
    .end local v22    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 152
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v4, "1"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "callback error"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v8}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "onReceiveData"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2

    .line 92
    .restart local v5    # "dataId":Ljava/lang/String;
    .restart local v6    # "errorCode":I
    .restart local v15    # "command":I
    .restart local v22    # "userId":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljig;->b(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6, v2}, Ljih;->onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_1

    .line 95
    :sswitch_2
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v18

    .line 97
    .local v18, "msg":[B
    const-string/jumbo v2, "bizAck"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 99
    .local v19, "needBizAck":Z
    if-eqz v18, :cond_6

    .line 100
    const-string/jumbo v2, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "COMMAND_RECEIVE_DATA onData dataId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_4
    invoke-static/range {p1 .. p1}, Ljig;->b(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v17

    .line 107
    .local v17, "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    if-eqz v19, :cond_5

    .line 108
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "try to send biz ack dataId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->extHeader:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    :try_start_3
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "sendBusinessAck"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v23, "dataId"

    aput-object v23, v4, v12

    const/4 v12, 0x1

    aput-object v5, v4, v12

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    if-eqz p1, :cond_5

    .line 1204
    const-string/jumbo v2, "host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1205
    const-string/jumbo v2, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1206
    const-string/jumbo v2, "target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1207
    const-string/jumbo v2, "flags"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v6

    .line 1209
    .end local v6    # "errorCode":I
    invoke-static/range {p0 .. p0}, Lcom/taobao/accs/ACCSManager;->getManagerImpl(Landroid/content/Context;)Ljhz;

    move-result-object v2

    invoke-interface/range {v2 .. v8}, Ljhz;->sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V

    .line 1210
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "bizAckSucc"

    const-string/jumbo v4, ""

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v2, v3, v4, v0, v1}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_2
    move-object/from16 v2, p2

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    .line 111
    :try_start_4
    invoke-interface/range {v2 .. v7}, Ljih;->onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 1212
    :catch_1
    move-exception v2

    .line 1213
    const-string/jumbo v3, "AccsAbstractDataListener"

    const-string/jumbo v4, "sendBusinessAck"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1214
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "bizAckFail"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v3, v4, v2, v0, v1}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_2

    .line 114
    .end local v17    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .restart local v6    # "errorCode":I
    :cond_6
    const-string/jumbo v2, "AccsAbstractDataListener"

    const-string/jumbo v3, "COMMAND_RECEIVE_DATA msg null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v4, "1"

    const-string/jumbo v8, "COMMAND_RECEIVE_DATA msg null"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v8}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    .end local v18    # "msg":[B
    .end local v19    # "needBizAck":Z
    :sswitch_3
    const-string/jumbo v2, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    const-string/jumbo v2, "res"

    const-string/jumbo v3, "send_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    const-string/jumbo v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 125
    .local v7, "data":[B
    invoke-static/range {p1 .. p1}, Ljig;->b(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v8

    move-object/from16 v3, p2

    move-object/from16 v4, v21

    invoke-interface/range {v3 .. v8}, Ljih;->onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 127
    .end local v7    # "data":[B
    :cond_7
    invoke-static/range {p1 .. p1}, Ljig;->b(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v5, v6, v2}, Ljih;->onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 131
    :sswitch_4
    const-string/jumbo v2, "anti_brush_ret"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 132
    .local v20, "ret":Z
    const-string/jumbo v2, "AccsAbstractDataListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "anti brush result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1, v2}, Ljih;->onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_1

    .line 136
    .end local v20    # "ret":Z
    :sswitch_5
    const-string/jumbo v2, "connect_avail"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 137
    .local v14, "available":Z
    const-string/jumbo v2, "host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "host":Ljava/lang/String;
    const-string/jumbo v2, "errorDetail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "errorDetail":Ljava/lang/String;
    const-string/jumbo v2, "type_inapp"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 140
    .local v10, "isInapp":Z
    const-string/jumbo v2, "is_center_host"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 141
    .local v11, "isCenter":Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    if-eqz v14, :cond_8

    .line 143
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    invoke-direct {v2, v9, v10, v11}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljih;->onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V

    goto/16 :goto_1

    .line 145
    :cond_8
    new-instance v8, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    move v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljih;->onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x67 -> :sswitch_5
        0x68 -> :sswitch_4
    .end sparse-switch
.end method

.method private static a(Landroid/content/Intent;)Ljava/util/Map;
    .locals 11
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 169
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->values()[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move-object v3, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .local v3, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :goto_0
    if-ge v4, v5, :cond_0

    :try_start_1
    aget-object v6, v0, v4

    .line 170
    .local v6, "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    invoke-virtual {v6}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 172
    if-nez v3, :cond_2

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v3, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_0

    .end local v6    # "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .line 183
    .end local v0    # "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :goto_3
    return-object v3

    .line 180
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v8, "AccsAbstractDataListener"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v3, v2

    .line 183
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_3

    .line 180
    .restart local v0    # "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_4

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v6    # "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_1

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :cond_3
    move-object v2, v3

    .end local v3    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private static b(Landroid/content/Intent;)Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-static {p0}, Ljig;->a(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    const-string/jumbo v4, "packageName"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "fromPkg":Ljava/lang/String;
    const-string/jumbo v4, "host"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 191
    .local v3, "info":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    :cond_0
    new-instance v3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .end local v3    # "info":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    invoke-direct {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    .line 193
    .restart local v3    # "info":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    iput-object v0, v3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->extHeader:Ljava/util/Map;

    .line 194
    iput-object v1, v3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 195
    iput-object v2, v3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    .line 197
    :cond_1
    return-object v3
.end method


# virtual methods
.method public onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "ret"    # Z
    .param p2, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 49
    return-void
.end method

.method public onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 0
    .param p1, "connectInfo"    # Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .prologue
    .line 32
    return-void
.end method

.method public onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 0
    .param p1, "connectInfo"    # Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .prologue
    .line 40
    return-void
.end method
