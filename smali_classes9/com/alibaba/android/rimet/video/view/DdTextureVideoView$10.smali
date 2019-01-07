.class final Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;
.super Ljava/lang/Object;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 577
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->m(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    .line 578
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 595
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    .line 596
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Z)V

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 582
    iget-object v4, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v4}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 583
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v4}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Leml;

    move-result-object v4

    .line 1086
    iget v5, v4, Leml;->b:I

    if-ne v5, p2, :cond_3

    iget v4, v4, Leml;->c:I

    if-ne v4, p3, :cond_3

    move v0, v2

    .line 584
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 585
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    iget-object v3, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v3}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->seekTo(I)V

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->start()V

    .line 590
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 582
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 1086
    goto :goto_1
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;->a:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 603
    return-void
.end method
