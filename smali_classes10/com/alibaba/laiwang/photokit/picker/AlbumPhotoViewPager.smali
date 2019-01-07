.class public Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AlbumPhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;,
        Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;

.field private c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a()V

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->b:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setOverScrollMode(I)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a:I

    .line 53
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    .prologue
    .line 9
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;

    return-object v0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 35
    instance-of v0, p1, Lhbm;

    if-eqz v0, :cond_2

    .line 36
    check-cast p1, Lhbm;

    .line 1057
    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p1, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1060
    :cond_1
    iget-object v0, p1, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p3}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->a(I)Z

    move-result v0

    goto :goto_0

    .line 38
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPageScrollListener(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;

    .line 31
    return-void
.end method

.method public setOnPageSelectedListener(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->b:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;

    .line 27
    return-void
.end method
