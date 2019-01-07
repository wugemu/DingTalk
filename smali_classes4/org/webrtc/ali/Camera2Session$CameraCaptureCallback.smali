.class Lorg/webrtc/ali/Camera2Session$CameraCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraCaptureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/Camera2Session;


# direct methods
.method private constructor <init>(Lorg/webrtc/ali/Camera2Session;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lorg/webrtc/ali/Camera2Session$CameraCaptureCallback;->this$0:Lorg/webrtc/ali/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/Camera2Session;Lorg/webrtc/ali/Camera2Session$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/Camera2Session;
    .param p2, "x1"    # Lorg/webrtc/ali/Camera2Session$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lorg/webrtc/ali/Camera2Session$CameraCaptureCallback;-><init>(Lorg/webrtc/ali/Camera2Session;)V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 288
    const-string/jumbo v0, "Camera2Session"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Capture failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
