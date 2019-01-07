.class final Lbsv$g;
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
    name = "g"
.end annotation


# instance fields
.field a:Lbsy$b;

.field final synthetic b:Lbsv;

.field private c:Lbsj;


# direct methods
.method constructor <init>(Lbsv;Lbsj;Lbsy$b;)V
    .locals 0
    .param p2, "endorseModel"    # Lbsj;
    .param p3, "listener"    # Lbsy$b;

    .prologue
    .line 1796
    iput-object p1, p0, Lbsv$g;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    iput-object p2, p0, Lbsv$g;->c:Lbsj;

    .line 1798
    iput-object p3, p0, Lbsv$g;->a:Lbsy$b;

    .line 1799
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

    .line 1803
    const/4 v2, 0x0

    .line 1804
    .local v2, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    iget-object v5, p0, Lbsv$g;->b:Lbsv;

    .line 2075
    invoke-virtual {v5}, Lbsv;->F()Z

    move-result v5

    .line 1804
    if-eqz v5, :cond_0

    .line 1806
    :try_start_0
    new-instance v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    invoke-direct {v3}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;-><init>()V

    .line 1807
    .local v3, "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    iget-object v5, p0, Lbsv$g;->c:Lbsj;

    iget-object v5, v5, Lbsj;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->a:I

    .line 1808
    iget-object v5, p0, Lbsv$g;->c:Lbsj;

    iget-object v5, v5, Lbsj;->b:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->b:Z

    .line 1809
    iget-object v5, p0, Lbsv$g;->c:Lbsj;

    iget-object v5, v5, Lbsj;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->c:I

    .line 1810
    iget-object v5, p0, Lbsv$g;->c:Lbsj;

    iget-object v5, v5, Lbsj;->d:[B

    iput-object v5, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->d:[B

    .line 1812
    iget-object v5, p0, Lbsv$g;->b:Lbsv;

    .line 3075
    iget-object v5, v5, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1812
    invoke-interface {v5, v3}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->handshake(Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v4

    .line 1813
    .local v4, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v4, :cond_2

    .line 1814
    invoke-virtual {v4}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    move-object v2, v0

    .line 1816
    if-eqz v2, :cond_1

    .line 1817
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "handshake result, code="

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

    .line 3837
    .end local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .end local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lbsv$g;->b:Lbsv;

    new-instance v6, Lbsv$g$1;

    invoke-direct {v6, p0, v2}, Lbsv$g$1;-><init>(Lbsv$g;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V

    invoke-virtual {v5, v6}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1833
    return-void

    .line 1822
    .restart local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .restart local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "handshake result null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1827
    .end local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .end local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :catch_0
    move-exception v1

    .line 1828
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1829
    const-string/jumbo v5, "BleBind"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "handshake exception:"

    aput-object v7, v6, v9

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1825
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "model":Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;
    .restart local v4    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v5, "BleBind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "rpc handshake result null"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
