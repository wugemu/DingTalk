.class public final Lhbn;
.super Lgl;
.source "AlbumViewPagerAdapter.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhbn$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lhbn$a;

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lhbm;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbm;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;",
            "Lcom/alibaba/doraemon/image/ImageMagician;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "imageItems":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-direct {p0}, Lgl;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhbn;->f:Ljava/util/List;

    .line 107
    new-instance v0, Lhbn$2;

    invoke-direct {v0, p0}, Lhbn$2;-><init>(Lhbn;)V

    iput-object v0, p0, Lhbn;->h:Landroid/view/View$OnClickListener;

    .line 44
    iput-object p1, p0, Lhbn;->a:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lhbn;->b:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lhbn;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lhbn;->e:Landroid/util/SparseArray;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lhbn;->g:I

    .line 49
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 141
    iget v0, p0, Lhbn;->g:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lhbn;->e:Landroid/util/SparseArray;

    iget v1, p0, Lhbn;->g:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lhbn;->e:Landroid/util/SparseArray;

    iget v1, p0, Lhbn;->g:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbm;

    .line 1105
    iget-object v1, v0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, v0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lhbm;->a:Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;->b(FF)V

    .line 144
    :cond_0
    iput p1, p0, Lhbn;->g:I

    .line 145
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    move-object v0, p3

    check-cast v0, Lhbm;

    .line 130
    .local v0, "photo":Lhbm;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhbm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lhbn;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 135
    iget-object v1, p0, Lhbn;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public final finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 149
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lhbn;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lhbn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 170
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v2, p0, Lhbn;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 68
    iget-object v2, p0, Lhbn;->f:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhbm;

    .line 72
    .local v1, "photoView":Lhbm;
    :goto_0
    iget-object v2, p0, Lhbn;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhbn;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 73
    iget-object v2, p0, Lhbn;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 74
    .local v0, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhbm;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lhbm;->getVideoPlayButton()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .end local v0    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_0
    :goto_1
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhbm;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lhbn;->c:Lhbn$a;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lhbn;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lhbm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    iget-object v2, p0, Lhbn;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    return-object v1

    .line 70
    .end local v1    # "photoView":Lhbm;
    :cond_2
    new-instance v1, Lhbm;

    iget-object v2, p0, Lhbn;->a:Landroid/app/Activity;

    iget-object v3, p0, Lhbn;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-direct {v1, v2, v3}, Lhbm;-><init>(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;)V

    .restart local v1    # "photoView":Lhbm;
    goto :goto_0

    .line 77
    .restart local v0    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhbm;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lhbm;->getVideoPlayButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v1}, Lhbm;->getVideoPlayButton()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lhbn$1;

    invoke-direct {v3, p0, v0}, Lhbn$1;-><init>(Lhbn;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 158
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public final startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 167
    return-void
.end method
