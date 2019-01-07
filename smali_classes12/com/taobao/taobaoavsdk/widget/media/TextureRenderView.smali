.class public Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ljoq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

.field private c:Ljor;

.field private d:Ljoq$a;

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "TextureRenderView"

    sput-object v0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->b()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->b()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->b()V

    .line 41
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljor;

    invoke-direct {v0}, Ljor;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    .line 45
    invoke-virtual {p0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    .line 153
    return-void
.end method

.method public final a(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 53
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    invoke-virtual {v0, p1, p2}, Ljor;->a(II)V

    .line 55
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->requestLayout()V

    .line 57
    :cond_0
    return-void
.end method

.method public final a(Ljoq$a;)V
    .locals 2
    .param p1, "callback"    # Ljoq$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    .line 138
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 140
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-interface {p1, v0}, Ljoq$a;->a(Ljoq$b;)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->f:Z

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-interface {p1, v0}, Ljoq$a;->b(Ljoq$b;)V

    .line 148
    :cond_2
    return-void
.end method

.method public final b(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 61
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    invoke-virtual {v0, p1, p2}, Ljor;->b(II)V

    .line 63
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->requestLayout()V

    .line 65
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 157
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
    .line 81
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    invoke-virtual {v0, p1, p2}, Ljor;->c(II)V

    .line 82
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    .line 1193
    iget v0, v0, Ljor;->b:I

    .line 82
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    .line 1201
    iget v1, v1, Ljor;->c:I

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 171
    :cond_1
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    .line 173
    :cond_2
    iput-boolean v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->f:Z

    .line 174
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->g:I

    .line 175
    iput v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->h:I

    .line 177
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    if-nez v0, :cond_4

    .line 178
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-interface {v0, v1}, Ljoq$a;->a(Ljoq$b;)V

    .line 184
    :cond_3
    return-void

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->e:Landroid/graphics/SurfaceTexture;

    .line 2101
    iput-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;->a:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->f:Z

    .line 202
    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->g:I

    .line 203
    iput v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->h:I

    .line 205
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-direct {v1, p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-interface {v1, v2}, Ljoq$a;->c(Ljoq$b;)V

    .line 212
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->f:Z

    .line 189
    iput p2, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->g:I

    .line 190
    iput p3, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->h:I

    .line 192
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-direct {v0, p0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;-><init>(Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->d:Ljoq$a;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->a:Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView$a;

    invoke-interface {v0, v1}, Ljoq$a;->b(Ljoq$b;)V

    .line 197
    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 217
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    .line 1189
    iput p1, v0, Ljor;->d:I

    .line 76
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->requestLayout()V

    .line 77
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->c:Ljor;

    .line 1032
    iput p1, v0, Ljor;->a:I

    .line 70
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/taobao/taobaoavsdk/widget/media/TextureRenderView;->setRotation(F)V

    .line 71
    return-void
.end method
