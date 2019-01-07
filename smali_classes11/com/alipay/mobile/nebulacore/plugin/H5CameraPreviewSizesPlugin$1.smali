.class Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;
.super Ljava/lang/Object;
.source "H5CameraPreviewSizesPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;->getSizeList(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$cameraInfo:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;ILiny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->val$cameraInfo:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 78
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    iget v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->val$cameraInfo:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    .line 79
    .local v2, "mCamera":Landroid/hardware/Camera;
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 81
    .local v0, "cameraParams":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 84
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 86
    const-string/jumbo v5, "success"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v5, "sizeList"

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->val$bridgeContext:Liny;

    invoke-interface {v5, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "cameraParams":Landroid/hardware/Camera$Parameters;
    .end local v2    # "mCamera":Landroid/hardware/Camera;
    .end local v3    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5CameraPreviewPlugin"

    const-string/jumbo v6, "catch exception "

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const-string/jumbo v5, "exception"

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v5, "success"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin$1;->val$bridgeContext:Liny;

    invoke-interface {v5, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method
