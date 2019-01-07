.class final Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Ljoq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/SurfaceTexture;

.field b:Landroid/view/Surface;

.field private c:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;


# direct methods
.method public constructor <init>(Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "textureView"    # Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->c:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;

    .line 97
    iput-object p2, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->a:Landroid/graphics/SurfaceTexture;

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljoq;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->c:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;

    return-object v0
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->a:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 113
    :cond_2
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final b()Landroid/view/Surface;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->b:Landroid/view/Surface;

    return-object v0
.end method
