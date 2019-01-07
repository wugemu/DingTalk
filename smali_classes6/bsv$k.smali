.class final Lbsv$k;
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
    name = "k"
.end annotation


# instance fields
.field a:Lbsv$j;

.field final synthetic b:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lbsv$j;)V
    .locals 0
    .param p2, "listener"    # Lbsv$j;

    .prologue
    .line 1577
    iput-object p1, p0, Lbsv$k;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    iput-object p2, p0, Lbsv$k;->a:Lbsv$j;

    .line 1579
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

    .line 1583
    const/4 v2, 0x0

    .line 1584
    .local v2, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;
    iget-object v4, p0, Lbsv$k;->b:Lbsv;

    .line 2075
    invoke-virtual {v4}, Lbsv;->F()Z

    move-result v4

    .line 1584
    if-eqz v4, :cond_0

    .line 1586
    :try_start_0
    iget-object v4, p0, Lbsv$k;->b:Lbsv;

    .line 3075
    iget-object v4, v4, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1586
    invoke-interface {v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->getWifiInfo()Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v3

    .line 1587
    .local v3, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;>;"
    if-eqz v3, :cond_2

    .line 1588
    invoke-virtual {v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    move-object v2, v0

    .line 1589
    if-eqz v2, :cond_1

    .line 1590
    const-string/jumbo v4, "BleBind"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiInfo result, wifiMac="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "; wifiList="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "; version="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->c:Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    .end local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lbsv$k;->b:Lbsv;

    new-instance v5, Lbsv$k$1;

    invoke-direct {v5, p0, v2}, Lbsv$k$1;-><init>(Lbsv$k;Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;)V

    invoke-virtual {v4, v5}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1606
    return-void

    .line 1595
    .restart local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v4, "BleBind"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiInfo result null"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1600
    .end local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;>;"
    :catch_0
    move-exception v1

    .line 1601
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1602
    const-string/jumbo v4, "BleBind"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "getWifiInfo exception:"

    aput-object v6, v5, v8

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1598
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v4, "BleBind"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "rpc getWifiInfo result null"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
