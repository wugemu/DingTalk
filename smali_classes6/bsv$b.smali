.class final Lbsv$b;
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
    name = "b"
.end annotation


# instance fields
.field a:Lbsy$c;

.field final synthetic b:Lbsv;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;


# direct methods
.method constructor <init>(Lbsv;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;Lbsy$c;)V
    .locals 0
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "staticIpModel"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;
    .param p5, "listener"    # Lbsy$c;

    .prologue
    .line 1716
    iput-object p1, p0, Lbsv$b;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1717
    iput-object p2, p0, Lbsv$b;->c:Ljava/lang/String;

    .line 1718
    iput-object p3, p0, Lbsv$b;->d:Ljava/lang/String;

    .line 1719
    iput-object p5, p0, Lbsv$b;->a:Lbsy$c;

    .line 1720
    iput-object p4, p0, Lbsv$b;->e:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    .line 1721
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1725
    const/4 v3, 0x0

    .line 1726
    .local v3, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    iget-object v6, p0, Lbsv$b;->b:Lbsv;

    .line 2075
    invoke-virtual {v6}, Lbsv;->F()Z

    move-result v6

    .line 1726
    if-eqz v6, :cond_1

    .line 1728
    :try_start_0
    new-instance v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;

    invoke-direct {v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;-><init>()V

    .line 1729
    .local v4, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;
    iget-object v6, p0, Lbsv$b;->c:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;->a:Ljava/lang/String;

    .line 1730
    iget-object v6, p0, Lbsv$b;->d:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;->b:Ljava/lang/String;

    .line 1731
    iget-object v6, p0, Lbsv$b;->e:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    iput-object v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;->d:Lcom/alibaba/android/dingbox/btinterface/BleInterface$g;

    .line 1734
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "device_connect_wifi_check_network_enable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1736
    .local v2, "enable":Z
    if-eqz v2, :cond_0

    .line 1737
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;->c:Ljava/lang/Boolean;

    .line 1740
    :cond_0
    iget-object v6, p0, Lbsv$b;->b:Lbsv;

    .line 3075
    iget-object v6, v6, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1740
    invoke-interface {v6, v4}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->connectWifi(Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v5

    .line 1741
    .local v5, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v5, :cond_3

    .line 1742
    invoke-virtual {v5}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    move-object v3, v0

    .line 1744
    if-eqz v3, :cond_2

    .line 1745
    const-string/jumbo v6, "BleBind"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "connect wifi result, code="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "; reason="

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "; ipAddress="

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->d:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "; version="

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    iget-object v6, p0, Lbsv$b;->b:Lbsv;

    iget-object v6, v6, Lbsv;->b:Lbsw$b;

    iget-object v7, p0, Lbsv$b;->c:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;Lbsw$b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3767
    .end local v2    # "enable":Z
    .end local v4    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;
    .end local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_1
    :goto_0
    iget-object v6, p0, Lbsv$b;->b:Lbsv;

    new-instance v7, Lbsv$b$1;

    invoke-direct {v7, p0, v3}, Lbsv$b$1;-><init>(Lbsv$b;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V

    invoke-virtual {v6, v7}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1763
    return-void

    .line 1752
    .restart local v2    # "enable":Z
    .restart local v4    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;
    .restart local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v6, "BleBind"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "connectWifi result null"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1757
    .end local v2    # "enable":Z
    .end local v4    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;
    .end local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :catch_0
    move-exception v1

    .line 1758
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1759
    const-string/jumbo v6, "BleBind"

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "connectWifi exception:"

    aput-object v8, v7, v10

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1755
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "enable":Z
    .restart local v4    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;
    .restart local v5    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_3
    :try_start_2
    const-string/jumbo v6, "BleBind"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "rpc connectWifi result null"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
