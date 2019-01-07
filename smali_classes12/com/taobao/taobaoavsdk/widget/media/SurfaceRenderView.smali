.class public Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljoq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljor;

.field private c:Ljoq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1030
    new-instance v0, Ljor;

    invoke-direct {v0}, Ljor;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    .line 1031
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    .line 77
    return-void
.end method

.method public final a(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 36
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    invoke-virtual {v0, p1, p2}, Ljor;->a(II)V

    .line 38
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->requestLayout()V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Ljoq$a;)V
    .locals 0
    .param p1, "callback"    # Ljoq$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    .line 72
    return-void
.end method

.method public final b(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 44
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    invoke-virtual {v0, p1, p2}, Ljor;->b(II)V

    .line 46
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->requestLayout()V

    .line 48
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 81
    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    invoke-virtual {v0, p1, p2}, Ljor;->c(II)V

    .line 66
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    .line 2193
    iget v0, v0, Ljor;->b:I

    .line 66
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    .line 2201
    iget v1, v1, Ljor;->c:I

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    .line 2189
    iput p1, v0, Ljor;->d:I

    .line 59
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->requestLayout()V

    .line 60
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->b:Ljor;

    .line 2032
    iput p1, v0, Ljor;->a:I

    .line 53
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->setRotation(F)V

    .line 54
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;

    invoke-direct {v0, p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 95
    .local v0, "surfaceHolder":Ljoq$b;
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    invoke-interface {v1, v0}, Ljoq$a;->b(Ljoq$b;)V

    .line 98
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;

    invoke-direct {v0, p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 87
    .local v0, "surfaceHolder":Ljoq$b;
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    invoke-interface {v1, v0}, Ljoq$a;->a(Ljoq$b;)V

    .line 90
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;

    invoke-direct {v0, p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 103
    .local v0, "surfaceHolder":Ljoq$b;
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/SurfaceRenderView;->c:Ljoq$a;

    invoke-interface {v1, v0}, Ljoq$a;->c(Ljoq$b;)V

    .line 106
    :cond_0
    return-void
.end method
