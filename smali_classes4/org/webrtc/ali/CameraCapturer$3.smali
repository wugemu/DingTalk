.class Lorg/webrtc/ali/CameraCapturer$3;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$3;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$3;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    const-string/jumbo v1, "Camera failed to start within timeout."

    invoke-interface {v0, v1}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    .line 222
    return-void
.end method
