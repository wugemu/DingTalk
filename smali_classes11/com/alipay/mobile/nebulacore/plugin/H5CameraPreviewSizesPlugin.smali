.class public Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;
.super Lipd;
.source "H5CameraPreviewSizesPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5CameraPreviewPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getSizeList(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 47
    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 48
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_0

    .line 49
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v5}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 97
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string/jumbo v5, "cameraId"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, "cameraInfo":I
    const-string/jumbo v5, "H5CameraPreviewPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cameraId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz v1, :cond_1

    if-eq v1, v8, :cond_1

    .line 56
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v5}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0

    .line 60
    :cond_1
    new-array v3, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.CAMERA"

    aput-object v6, v3, v5

    .line 62
    .local v3, "reqPermissionsPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    .line 64
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 66
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v3}, Ligd;->a([Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, "authorizedStatus":Z
    if-nez v0, :cond_2

    .line 68
    const-string/jumbo v5, "H5CameraPreviewPlugin"

    const-string/jumbo v6, "get CAMERA permission PERMISSION_DENIED!"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v5, "authorizedStatus"

    const-string/jumbo v6, "NotDetermined"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {p2, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v5, "URGENT"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;

    invoke-direct {v6, p0, v1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;ILiny;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5CameraSupportedPreviewSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;->getSizeList(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 41
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 28
    const-string/jumbo v0, "h5CameraSupportedPreviewSize"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method
