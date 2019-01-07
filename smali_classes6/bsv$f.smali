.class final Lbsv$f;
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
    name = "f"
.end annotation


# instance fields
.field a:Lbsv$i;

.field final synthetic b:Lbsv;

.field private c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;


# direct methods
.method private constructor <init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V
    .locals 0
    .param p2, "featureReqModel"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .param p3, "listener"    # Lbsv$i;

    .prologue
    .line 1867
    iput-object p1, p0, Lbsv$f;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1868
    iput-object p2, p0, Lbsv$f;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;

    .line 1869
    iput-object p3, p0, Lbsv$f;->a:Lbsv$i;

    .line 1870
    return-void
.end method

.method synthetic constructor <init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;B)V
    .locals 0
    .param p1, "x0"    # Lbsv;
    .param p2, "x1"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .param p3, "x2"    # Lbsv$i;

    .prologue
    .line 1862
    invoke-direct {p0, p1, p2, p3}, Lbsv$f;-><init>(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;Lbsv$i;)V

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

    .line 1874
    const/4 v2, 0x0

    .line 1875
    .local v2, "featureRespModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;
    iget-object v5, p0, Lbsv$f;->b:Lbsv;

    .line 2075
    invoke-virtual {v5}, Lbsv;->F()Z

    move-result v5

    .line 1875
    if-eqz v5, :cond_0

    .line 1877
    :try_start_0
    iget-object v3, p0, Lbsv$f;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;

    .line 1879
    .local v3, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    iget-object v5, p0, Lbsv$f;->b:Lbsv;

    .line 3075
    iget-object v5, v5, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1879
    invoke-interface {v5, v3}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->getDeviceFeature(Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v4

    .line 1880
    .local v4, "resultModel":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;>;"
    if-eqz v4, :cond_2

    .line 1881
    invoke-virtual {v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    move-object v2, v0

    .line 1882
    if-eqz v2, :cond_1

    .line 1883
    const-string/jumbo v5, "BleBind"

    const/16 v6, 0x12

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "getDeviceFeature result, supportWire="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->g:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "; supportReset="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->c:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "; netWorkAvailable="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->f:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "; wifiMacAddress="

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->i:Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "; wireMacAddress="

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->h:Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "; wirePluggedIn="

    aput-object v8, v6, v7

    const/16 v7, 0xb

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->e:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v8, "; version="

    aput-object v8, v6, v7

    const/16 v7, 0xd

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->d:Ljava/lang/Integer;

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string/jumbo v8, "; supportWifiStaticIp="

    aput-object v8, v6, v7

    const/16 v7, 0xf

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->j:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string/jumbo v8, "; supportWireStaticIp="

    aput-object v8, v6, v7

    const/16 v7, 0x11

    iget-object v8, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->k:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3908
    .end local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .end local v4    # "resultModel":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lbsv$f;->b:Lbsv;

    new-instance v6, Lbsv$f$1;

    invoke-direct {v6, p0, v2}, Lbsv$f$1;-><init>(Lbsv$f;Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V

    invoke-virtual {v5, v6}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1904
    return-void

    .line 1893
    .restart local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .restart local v4    # "resultModel":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "getDeviceFeature result null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1898
    .end local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .end local v4    # "resultModel":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;>;"
    :catch_0
    move-exception v1

    .line 1899
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1900
    const-string/jumbo v5, "BleBind"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "getDeviceFeature exception:"

    aput-object v7, v6, v9

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1896
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$d;
    .restart local v4    # "resultModel":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "rpc getDeviceFeature result null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
