.class Lorg/webrtc/ali/EglRenderer$8;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 476
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$8;->this$0:Lorg/webrtc/ali/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/EglRenderer$8;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$8;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$8;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->detachCurrent()V

    .line 481
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$8;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->releaseSurface()V

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$8;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 484
    return-void
.end method
