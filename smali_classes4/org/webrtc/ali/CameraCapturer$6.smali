.class Lorg/webrtc/ali/CameraCapturer$6;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/CameraCapturer;->stopCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;

.field final synthetic val$oldSession:Lorg/webrtc/ali/CameraSession;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;Lorg/webrtc/ali/CameraSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$6;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer$6;->val$oldSession:Lorg/webrtc/ali/CameraSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$6;->val$oldSession:Lorg/webrtc/ali/CameraSession;

    invoke-interface {v0}, Lorg/webrtc/ali/CameraSession;->stop()V

    .line 348
    return-void
.end method
