.class Lorg/webrtc/ali/EglRenderer$4;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/EglRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;

.field final synthetic val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/EglRenderer;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

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
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$800(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/RendererCommon$GlDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$800(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/RendererCommon$GlDrawer;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/RendererCommon$GlDrawer;->release()V

    .line 240
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0, v2}, Lorg/webrtc/ali/EglRenderer;->access$802(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/RendererCommon$GlDrawer;)Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$900(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/RendererCommon$YuvUploader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/RendererCommon$YuvUploader;->release()V

    .line 243
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$1000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/GlTextureFrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$1000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/GlTextureFrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/GlTextureFrameBuffer;->release()V

    .line 245
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0, v2}, Lorg/webrtc/ali/EglRenderer;->access$1002(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/GlTextureFrameBuffer;)Lorg/webrtc/ali/GlTextureFrameBuffer;

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    const-string/jumbo v1, "eglBase detach and release."

    invoke-static {v0, v1}, Lorg/webrtc/ali/EglRenderer;->access$700(Lorg/webrtc/ali/EglRenderer;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->detachCurrent()V

    .line 250
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 251
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0, v2}, Lorg/webrtc/ali/EglRenderer;->access$002(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglBase;)Lorg/webrtc/ali/EglBase;

    .line 253
    :cond_2
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 254
    return-void
.end method
