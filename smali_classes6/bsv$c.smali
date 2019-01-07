.class final Lbsv$c;
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
    name = "c"
.end annotation


# instance fields
.field a:Lbsy$b;

.field final synthetic b:Lbsv;

.field private c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;


# direct methods
.method constructor <init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;Lbsy$b;)V
    .locals 0
    .param p2, "staticIpModel"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    .param p3, "listener"    # Lbsy$b;

    .prologue
    .line 1635
    iput-object p1, p0, Lbsv$c;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1636
    iput-object p2, p0, Lbsv$c;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    .line 1637
    iput-object p3, p0, Lbsv$c;->a:Lbsy$b;

    .line 1638
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1642
    const/4 v2, 0x0

    .line 1643
    .local v2, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    iget-object v5, p0, Lbsv$c;->b:Lbsv;

    .line 2075
    invoke-virtual {v5}, Lbsv;->F()Z

    move-result v5

    .line 1643
    if-eqz v5, :cond_0

    .line 1645
    :try_start_0
    new-instance v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;

    invoke-direct {v3}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;-><init>()V

    .line 1646
    .local v3, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;->a:Ljava/lang/Integer;

    .line 1647
    iget-object v5, p0, Lbsv$c;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    iput-object v5, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;->b:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    .line 1649
    iget-object v5, p0, Lbsv$c;->b:Lbsv;

    .line 3075
    iget-object v5, v5, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1649
    invoke-interface {v5, v3}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->connectWire(Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v4

    .line 1650
    .local v4, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v4, :cond_2

    .line 1651
    invoke-virtual {v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    move-object v2, v0

    .line 1652
    if-eqz v2, :cond_1

    .line 1653
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "connectWire result, code="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "; reason="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "; version="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3673
    .end local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;
    .end local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lbsv$c;->b:Lbsv;

    new-instance v6, Lbsv$c$1;

    invoke-direct {v6, p0, v2}, Lbsv$c$1;-><init>(Lbsv$c;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V

    invoke-virtual {v5, v6}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1669
    return-void

    .line 1658
    .restart local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;
    .restart local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "connectWire result null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1663
    .end local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;
    .end local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :catch_0
    move-exception v1

    .line 1664
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1665
    const-string/jumbo v5, "BleBind"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "connectWire exception:"

    aput-object v7, v6, v9

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1661
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$j;
    .restart local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "rpc connectWire result null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
