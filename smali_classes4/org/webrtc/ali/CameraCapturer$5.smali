.class Lorg/webrtc/ali/CameraCapturer$5;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/CameraCapturer;->createSessionInternal(ILandroid/media/MediaRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;

.field final synthetic val$mediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iput-object p2, p0, Lorg/webrtc/ali/CameraCapturer$5;->val$mediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    iget-object v1, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v1}, Lorg/webrtc/ali/CameraCapturer;->access$2000(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession$CreateSessionCallback;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v2}, Lorg/webrtc/ali/CameraCapturer;->access$2100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession$Events;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v3}, Lorg/webrtc/ali/CameraCapturer;->access$2200(Lorg/webrtc/ali/CameraCapturer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    .line 324
    invoke-static {v4}, Lorg/webrtc/ali/CameraCapturer;->access$1000(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/ali/CameraCapturer$5;->val$mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v6}, Lorg/webrtc/ali/CameraCapturer;->access$1400(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v7}, Lorg/webrtc/ali/CameraCapturer;->access$2300(Lorg/webrtc/ali/CameraCapturer;)I

    move-result v7

    iget-object v8, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v8}, Lorg/webrtc/ali/CameraCapturer;->access$2400(Lorg/webrtc/ali/CameraCapturer;)I

    move-result v8

    iget-object v9, p0, Lorg/webrtc/ali/CameraCapturer$5;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v9}, Lorg/webrtc/ali/CameraCapturer;->access$2500(Lorg/webrtc/ali/CameraCapturer;)I

    move-result v9

    .line 323
    invoke-virtual/range {v0 .. v9}, Lorg/webrtc/ali/CameraCapturer;->createCameraSession(Lorg/webrtc/ali/CameraSession$CreateSessionCallback;Lorg/webrtc/ali/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/media/MediaRecorder;Ljava/lang/String;III)V

    .line 325
    return-void
.end method
