.class Lorg/webrtc/ali/CameraCapturer$7;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/CameraCapturer;->switchCamera(Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;

.field final synthetic val$switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 378
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$7;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer$7;->val$switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

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
    .line 381
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$7;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer$7;->val$switchEventsHandler:Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {v0, v1}, Lorg/webrtc/ali/CameraCapturer;->access$1600(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 382
    return-void
.end method
