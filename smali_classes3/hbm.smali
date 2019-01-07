.class public final Lhbm;
.super Landroid/widget/RelativeLayout;
.source "AlbumPhotoView.java"


# instance fields
.field public a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/doraemon/image/ImageMagician;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhbm;->d:Landroid/os/Handler;

    .line 29
    iput-object p2, p0, Lhbm;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1044
    invoke-virtual {p0}, Lhbm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Liff$e;->album_photo_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1045
    sget v0, Liff$d;->album_photo:I

    invoke-virtual {p0, v0}, Lhbm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iput-object v0, p0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    .line 1046
    iget-object v0, p0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1047
    sget v0, Liff$d;->video_play_btn:I

    invoke-virtual {p0, v0}, Lhbm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhbm;->b:Landroid/view/View;

    .line 31
    return-void
.end method

.method static synthetic a(Lhbm;)Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;
    .locals 1
    .param p0, "x0"    # Lhbm;

    .prologue
    .line 19
    iget-object v0, p0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    return-object v0
.end method

.method static synthetic b(Lhbm;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lhbm;

    .prologue
    .line 19
    iget-object v0, p0, Lhbm;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x316

    .line 19
    .line 1065
    if-eqz p0, :cond_1

    .line 1067
    const-string/jumbo v0, ".gif"

    invoke-static {p0}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1072
    :goto_0
    return-object v0

    .line 1070
    :cond_0
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1074
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lhbm;->d:Landroid/os/Handler;

    new-instance v1, Lhbm$1;

    invoke-direct {v1, p0, p1}, Lhbm$1;-><init>(Lhbm;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public final getVideoPlayButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lhbm;->b:Landroid/view/View;

    return-object v0
.end method

.method public final setAlbumPhotoOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 40
    iget-object v0, p0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
