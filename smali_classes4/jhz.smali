.class public interface abstract Ljhz;
.super Ljava/lang/Object;
.source "IACCSManager.java"


# virtual methods
.method public abstract bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
.end method

.method public abstract bindService(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract bindUser(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public abstract clearLoginInfo(Landroid/content/Context;)V
.end method

.method public abstract forceDisableService(Landroid/content/Context;)V
.end method

.method public abstract forceEnableService(Landroid/content/Context;)V
.end method

.method public abstract forceReConnectChannel()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChannelState()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getUserUnit()Ljava/lang/String;
.end method

.method public abstract isChannelError(I)Z
.end method

.method public abstract isNetworkReachable(Landroid/content/Context;)Z
.end method

.method public abstract registerDataListener(Landroid/content/Context;Ljava/lang/String;Ljig;)V
.end method

.method public abstract registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
.end method

.method public abstract sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
.end method

.method public abstract sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
.end method

.method public abstract sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
.end method

.method public abstract sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
.end method

.method public abstract setLoginInfo(Landroid/content/Context;Ljic;)V
.end method

.method public abstract setMode(Landroid/content/Context;I)V
.end method

.method public abstract setProxy(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljia;)V
.end method

.method public abstract unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract unbindApp(Landroid/content/Context;)V
.end method

.method public abstract unbindService(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract unbindUser(Landroid/content/Context;)V
.end method
