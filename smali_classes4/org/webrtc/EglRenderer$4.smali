.class Lorg/webrtc/EglRenderer$4;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;

.field final synthetic val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglRenderer;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$800(Lorg/webrtc/EglRenderer;)Lorg/webrtc/RendererCommon$GlDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$800(Lorg/webrtc/EglRenderer;)Lorg/webrtc/RendererCommon$GlDrawer;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/RendererCommon$GlDrawer;->release()V

    .line 244
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0, v3}, Lorg/webrtc/EglRenderer;->access$802(Lorg/webrtc/EglRenderer;Lorg/webrtc/RendererCommon$GlDrawer;)Lorg/webrtc/RendererCommon$GlDrawer;

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$900(Lorg/webrtc/EglRenderer;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v1}, Lorg/webrtc/EglRenderer;->access$900(Lorg/webrtc/EglRenderer;)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 248
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0, v3}, Lorg/webrtc/EglRenderer;->access$902(Lorg/webrtc/EglRenderer;[I)[I

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$1000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/GlTextureFrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$1000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/GlTextureFrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/GlTextureFrameBuffer;->release()V

    .line 252
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0, v3}, Lorg/webrtc/EglRenderer;->access$1002(Lorg/webrtc/EglRenderer;Lorg/webrtc/GlTextureFrameBuffer;)Lorg/webrtc/GlTextureFrameBuffer;

    .line 254
    :cond_2
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    const-string/jumbo v1, "eglBase detach and release."

    invoke-static {v0, v1}, Lorg/webrtc/EglRenderer;->access$700(Lorg/webrtc/EglRenderer;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->detachCurrent()V

    .line 257
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$000(Lorg/webrtc/EglRenderer;)Lorg/webrtc/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 258
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v0, v3}, Lorg/webrtc/EglRenderer;->access$002(Lorg/webrtc/EglRenderer;Lorg/webrtc/EglBase;)Lorg/webrtc/EglBase;

    .line 260
    :cond_3
    iget-object v0, p0, Lorg/webrtc/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    return-void
.end method
