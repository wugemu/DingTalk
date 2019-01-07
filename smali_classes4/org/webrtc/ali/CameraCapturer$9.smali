.class Lorg/webrtc/ali/CameraCapturer$9;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/CameraCapturer;->removeMediaRecorderFromCamera(Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;

.field final synthetic val$mediaRecoderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$9;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer$9;->val$mediaRecoderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 404
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$9;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$9;->val$mediaRecoderEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/CameraCapturer;->access$2600(Lorg/webrtc/ali/CameraCapturer;Landroid/media/MediaRecorder;Lorg/webrtc/ali/CameraVideoCapturer$MediaRecorderHandler;)V

    .line 405
    return-void
.end method
