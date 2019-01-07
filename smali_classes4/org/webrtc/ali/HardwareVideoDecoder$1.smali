.class Lorg/webrtc/ali/HardwareVideoDecoder$1;
.super Ljava/lang/Thread;
.source "HardwareVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/HardwareVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/HardwareVideoDecoder;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/HardwareVideoDecoder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/HardwareVideoDecoder;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 308
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    new-instance v1, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;-><init>()V

    invoke-static {v0, v1}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$002(Lorg/webrtc/ali/HardwareVideoDecoder;Lorg/webrtc/ali/ThreadUtils$ThreadChecker;)Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    .line 309
    :goto_0
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$100(Lorg/webrtc/ali/HardwareVideoDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$200(Lorg/webrtc/ali/HardwareVideoDecoder;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder$1;->this$0:Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-static {v0}, Lorg/webrtc/ali/HardwareVideoDecoder;->access$300(Lorg/webrtc/ali/HardwareVideoDecoder;)V

    .line 313
    return-void
.end method
