.class Lorg/webrtc/ali/Camera1Session$1;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/Camera1Session;->startCapturing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/Camera1Session;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/Camera1Session;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/Camera1Session;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/webrtc/ali/Camera1Session$1;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 197
    const-string/jumbo v0, "Camera server died!"

    .line 201
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "Camera1Session"

    invoke-static {v1, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$1;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$000(Lorg/webrtc/ali/Camera1Session;)V

    .line 203
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 204
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$1;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$100(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session$1;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-interface {v1, v2}, Lorg/webrtc/ali/CameraSession$Events;->onCameraDisconnected(Lorg/webrtc/ali/CameraSession;)V

    .line 208
    :goto_1
    return-void

    .line 199
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Camera error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/Camera1Session$1;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-static {v1}, Lorg/webrtc/ali/Camera1Session;->access$100(Lorg/webrtc/ali/Camera1Session;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/Camera1Session$1;->this$0:Lorg/webrtc/ali/Camera1Session;

    invoke-interface {v1, v2, v0}, Lorg/webrtc/ali/CameraSession$Events;->onCameraError(Lorg/webrtc/ali/CameraSession;Ljava/lang/String;)V

    goto :goto_1
.end method
