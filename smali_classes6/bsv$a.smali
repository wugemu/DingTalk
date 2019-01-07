.class final Lbsv$a;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lbsy$b;

.field final synthetic b:Lbsv;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbsv;IJLjava/lang/String;Lbsy$b;)V
    .locals 1
    .param p2, "devId"    # I
    .param p3, "devUid"    # J
    .param p5, "activeCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lbsy$b;

    .prologue
    .line 1441
    iput-object p1, p0, Lbsv$a;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    iput p2, p0, Lbsv$a;->c:I

    .line 1443
    iput-wide p3, p0, Lbsv$a;->d:J

    .line 1444
    iput-object p5, p0, Lbsv$a;->e:Ljava/lang/String;

    .line 1445
    iput-object p6, p0, Lbsv$a;->a:Lbsy$b;

    .line 1446
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1450
    const/4 v3, 0x0

    .line 1451
    .local v3, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    move-object/from16 v0, p0

    iget-object v8, v0, Lbsv$a;->b:Lbsv;

    .line 2075
    invoke-virtual {v8}, Lbsv;->F()Z

    move-result v8

    .line 1451
    if-eqz v8, :cond_0

    .line 1453
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 1454
    .local v7, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v8, v0, Lbsv$a;->b:Lbsv;

    .line 3199
    invoke-static {v7}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 3200
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    .line 3202
    const-string/jumbo v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x36ee80

    div-int v12, v8, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0xea60

    div-int v12, v8, v12

    rem-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 3203
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-ltz v8, :cond_1

    const-string/jumbo v8, "+"

    :goto_0
    aput-object v8, v10, v11

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1456
    .local v6, "timeZone":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;-><init>()V

    .line 1457
    .local v4, "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    move-object/from16 v0, p0

    iget v8, v0, Lbsv$a;->c:I

    iput v8, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->a:I

    .line 1458
    move-object/from16 v0, p0

    iget-object v8, v0, Lbsv$a;->e:Ljava/lang/String;

    iput-object v8, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->b:Ljava/lang/String;

    .line 1459
    move-object/from16 v0, p0

    iget-wide v8, v0, Lbsv$a;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->c:Ljava/lang/Long;

    .line 1461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->f:Ljava/lang/Long;

    .line 1462
    iput-object v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->d:Ljava/lang/String;

    .line 1463
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;->e:Ljava/lang/String;

    .line 1464
    move-object/from16 v0, p0

    iget-object v8, v0, Lbsv$a;->b:Lbsv;

    .line 4075
    iget-object v8, v8, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1464
    invoke-interface {v8, v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->active(Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v5

    .line 1465
    .local v5, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v5, :cond_3

    .line 1466
    invoke-virtual {v5}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    move-object v3, v0

    .line 1468
    if-eqz v3, :cond_2

    .line 1469
    const-string/jumbo v8, "BleBind"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "active device result, code="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "; reason="

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "; version="

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4489
    .end local v4    # "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    .end local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    .end local v6    # "timeZone":Ljava/lang/String;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lbsv$a;->b:Lbsv;

    new-instance v9, Lbsv$a$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Lbsv$a$1;-><init>(Lbsv$a;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V

    invoke-virtual {v8, v9}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1486
    return-void

    .line 3203
    .restart local v7    # "tz":Ljava/util/TimeZone;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "-"

    goto/16 :goto_0

    .line 1474
    .restart local v4    # "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    .restart local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    .restart local v6    # "timeZone":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "BleBind"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "active result null"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1479
    .end local v4    # "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    .end local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    .end local v6    # "timeZone":Ljava/lang/String;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v2

    .line 1480
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1481
    const-string/jumbo v8, "BleBind"

    new-array v9, v15, [Ljava/lang/Object;

    const-string/jumbo v10, "active exception:"

    aput-object v10, v9, v13

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1477
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "reqModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$a;
    .restart local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    .restart local v6    # "timeZone":Ljava/lang/String;
    .restart local v7    # "tz":Ljava/util/TimeZone;
    :cond_3
    :try_start_2
    const-string/jumbo v8, "BleBind"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "rpc active result null"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
