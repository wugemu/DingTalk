.class final Lbsv$d;
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
    name = "d"
.end annotation


# instance fields
.field a:Lbsy$b;

.field final synthetic b:Lbsv;

.field private c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;


# direct methods
.method constructor <init>(Lbsv;Lbsj;Lbsy$b;)V
    .locals 2
    .param p2, "endorseModel"    # Lbsj;
    .param p3, "listener"    # Lbsy$b;

    .prologue
    .line 1931
    iput-object p1, p0, Lbsv$d;->b:Lbsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1932
    iput-object p3, p0, Lbsv$d;->a:Lbsy$b;

    .line 1933
    if-eqz p2, :cond_0

    .line 1934
    new-instance v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    invoke-direct {v0}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;-><init>()V

    iput-object v0, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    .line 1935
    iget-object v0, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    iget-object v1, p2, Lbsj;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->a:I

    .line 1936
    iget-object v0, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    iget-object v1, p2, Lbsj;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->c:I

    .line 1937
    iget-object v0, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    iget-object v1, p2, Lbsj;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->b:Z

    .line 1938
    iget-object v0, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    iget-object v1, p2, Lbsj;->d:[B

    iput-object v1, v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;->d:[B

    .line 1941
    :cond_0
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

    .line 1945
    const/4 v2, 0x0

    .line 1946
    .local v2, "errorModel":Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    iget-object v4, p0, Lbsv$d;->b:Lbsv;

    .line 2075
    invoke-virtual {v4}, Lbsv;->F()Z

    move-result v4

    .line 1946
    if-eqz v4, :cond_0

    iget-object v4, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    if-eqz v4, :cond_0

    .line 1948
    :try_start_0
    iget-object v4, p0, Lbsv$d;->b:Lbsv;

    .line 3075
    iget-object v4, v4, Lbsv;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 1948
    iget-object v5, p0, Lbsv$d;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;

    invoke-interface {v4, v5}, Lcom/alibaba/android/dingbox/btinterface/BleInterface;->resetDevice(Lcom/alibaba/android/dingbox/btinterface/BleInterface$b;)Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;

    move-result-object v3

    .line 1949
    .local v3, "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    if-eqz v3, :cond_2

    .line 1950
    invoke-virtual {v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    move-object v2, v0

    .line 1952
    if-eqz v2, :cond_1

    .line 1953
    const-string/jumbo v4, "BleBind"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "resetDevice result, code="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "; reason="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "; version="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3974
    .end local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lbsv$d;->b:Lbsv;

    new-instance v5, Lbsv$d$1;

    invoke-direct {v5, p0, v2}, Lbsv$d$1;-><init>(Lbsv$d;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V

    invoke-virtual {v4, v5}, Lbsv;->a(Ljava/lang/Runnable;)V

    .line 1970
    return-void

    .line 1958
    .restart local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v4, "BleBind"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "resetDevice result null"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1963
    .end local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :catch_0
    move-exception v1

    .line 1964
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1965
    const-string/jumbo v4, "BleBind"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "resetDevice exception:"

    aput-object v6, v5, v8

    .line 1966
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1965
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1961
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Lcom/alibaba/doraemon/bluetooth/BluetoothFuture;, "Lcom/alibaba/doraemon/bluetooth/BluetoothFuture<Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v4, "BleBind"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "rpc resetDevice result null"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
