.class Lorg/webrtc/ali/HardwareVideoEncoder$1;
.super Ljava/lang/Thread;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/HardwareVideoEncoder;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/HardwareVideoEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/HardwareVideoEncoder;

    .prologue
    .line 323
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 326
    :goto_0
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoEncoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoEncoder;->access$000(Lorg/webrtc/ali/HardwareVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoEncoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoEncoder;->access$100(Lorg/webrtc/ali/HardwareVideoEncoder;)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoEncoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoEncoder;->access$200(Lorg/webrtc/ali/HardwareVideoEncoder;)V

    .line 330
    return-void
.end method
