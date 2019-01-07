.class public interface abstract Lcom/alipay/mobile/nebula/process/H5EventHandler;
.super Ljava/lang/Object;
.source "H5EventHandler.java"


# static fields
.field public static final BIZ:Ljava/lang/String; = "nebulaApp"

.field public static final chooseImage:Ljava/lang/String; = "chooseImage"

.field public static final chooseVideo:Ljava/lang/String; = "chooseVideo"

.field public static final getAuthCode:Ljava/lang/String; = "getAuthCode"

.field public static final getAuthUserInfo:Ljava/lang/String; = "getAuthUserInfo"


# virtual methods
.method public abstract clientSenMsg(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract enableHandler(Ljava/lang/String;)Z
.end method

.method public abstract getH5IpcServerImpl()Lcom/alipay/mobile/nebula/process/H5IpcServer;
.end method

.method public abstract getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getLitePid()I
.end method

.method public abstract getMultiProcessTag()Ljava/lang/String;
.end method

.method public abstract handlerAction(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end method

.method public abstract httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJLjava/lang/String;Ljava/lang/String;ZLiop;)Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Liop;",
            ")",
            "Lcom/alipay/mobile/nebula/process/H5HttpRequestResult;"
        }
    .end annotation
.end method

.method public abstract isAllLiteProcessHide()Z
.end method

.method public abstract moveTaskToBack(Ljava/lang/Object;)V
.end method

.method public abstract moveTaskToBackAndStop(Landroid/app/Activity;Z)V
.end method

.method public abstract notifyUcInitSuccess()V
.end method

.method public abstract onLiteProcessPreloadComplete()V
.end method

.method public abstract onLoadUrlEvent()V
.end method

.method public abstract onUcInitAbandonedInLiteProcess()V
.end method

.method public abstract onUcReInitSuccessInLiteProcess()V
.end method

.method public abstract preConnectSpdy()V
.end method

.method public abstract preLoadInTinyProcess()V
.end method

.method public abstract prepare()V
.end method

.method public abstract registerLiteProcessActivityClass(Ljava/lang/Class;IZ)V
.end method

.method public abstract registerReqBizHandler(Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract registerServiceBean(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendDataToTinyProcess(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract showTinyLoadingView(Z)V
.end method

.method public abstract startLiteProcessAsync()Z
.end method

.method public abstract stopLiteProcessByAppIdInServer(Ljava/lang/String;)V
.end method

.method public abstract stopSelfProcess()V
.end method

.method public abstract unregisterRspBizHandler(Ljava/lang/String;)V
.end method
