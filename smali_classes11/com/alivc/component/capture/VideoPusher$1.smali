.class Lcom/alivc/component/capture/VideoPusher$1;
.super Ljava/lang/Object;
.source "VideoPusher.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 12
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x1

    const/16 v8, 0x11

    const-wide/16 v6, 0x3e8

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$102(Lcom/alivc/component/capture/VideoPusher;J)J

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v0

    if-lez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v4

    add-long/2addr v2, v4

    div-long/2addr v2, v10

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    .line 216
    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v4

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v5

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v7

    .line 215
    invoke-interface/range {v1 .. v8}, Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;->onVideoFrame(JIIIII)V

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alivc/component/capture/VideoPusher;->access$502(Lcom/alivc/component/capture/VideoPusher;J)J

    .line 226
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$608(Lcom/alivc/component/capture/VideoPusher;)I

    .line 227
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$100(Lcom/alivc/component/capture/VideoPusher;)J

    move-result-wide v4

    add-long/2addr v2, v4

    div-long/2addr v2, v10

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    .line 220
    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v4

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$400(Lcom/alivc/component/capture/VideoPusher;)I

    move-result v5

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$1;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v7

    .line 219
    invoke-interface/range {v1 .. v8}, Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;->onVideoFrame(JIIIII)V

    goto :goto_0
.end method
