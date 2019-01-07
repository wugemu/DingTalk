.class final Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Ljoq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;

.field private b:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceView"    # Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;->a:Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;

    .line 114
    iput-object p2, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;->b:Landroid/view/SurfaceHolder;

    .line 115
    return-void
.end method


# virtual methods
.method public final a()Ljoq;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;->a:Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;

    return-object v0
.end method

.method public final a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;->b:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public final b()Landroid/view/Surface;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method
