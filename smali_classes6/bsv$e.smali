.class final Lbsv$e;
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
    name = "e"
.end annotation


# instance fields
.field a:Lbsv$h;

.field final synthetic b:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lbsv$h;)V
    .locals 0
    .param p2, "listener"    # Lbsv$h;

    .prologue
    .line 1518
    iput-object p1, p0, Lbsv$e;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    iput-object p2, p0, Lbsv$e;->a:Lbsv$h;

    .line 1520
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1524
    const/4 v2, 0x0

    .line 1525
    .local v2, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;
    iget-object v4, p0, Lbsv$e;->b:Lbsv;

    .line 2075
    invoke-virtual {v4}, Lbsv;->F()Z

    move-result v4

    .line 1525
    if-eqz v4, :cond_0

    .line 1527
    :try_start_0
    iget-object v4, p0, Lbsv$e;->b:Lbsv;

    .line 3075
    iget-object v4, v4, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1527
    invoke-interface {v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->getActiveInfo()Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v3

    .line 1528
    .local v3, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;>;"
    if-eqz v3, :cond_2

    .line 1529
    invoke-virtual {v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    move-object v2, v0

    .line 1531
    if-eqz v2, :cond_1

    .line 1532
    const-string/jumbo v4, "BleBind"

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getDeviceInfo result, sn="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "; devServId="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->d:I

    .line 1533
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "; compTag="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->e:I

    .line 1534
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "; sn="

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "; mac="

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "; version="

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->f:Ljava/lang/Integer;

    aput-object v7, v5, v6

    .line 1532
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3554
    .end local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lbsv$e;->b:Lbsv;

    new-instance v5, Lbsv$e$1;

    invoke-direct {v5, p0, v2}, Lbsv$e$1;-><init>(Lbsv$e;Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V

    invoke-virtual {v4, v5}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1550
    return-void

    .line 1539
    .restart local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v4, "BleBind"

    const-string/jumbo v5, "getDeviceInfo null"

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1544
    .end local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;>;"
    :catch_0
    move-exception v1

    .line 1545
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1546
    const-string/jumbo v4, "BleBind"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "getDeviceInfo exception:"

    aput-object v6, v5, v8

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v4, "BleBind"

    const-string/jumbo v5, "rpc getDeviceInfo null"

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
