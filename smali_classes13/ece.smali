.class public Lece;
.super Ljava/lang/Object;
.source "DragSortFloatViewManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field public b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, -0x1000000

    iput v0, p0, Lece;->b:I

    .line 27
    iput-object p1, p0, Lece;->d:Landroid/widget/ListView;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v1, p0, Lece;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lece;->d:Landroid/widget/ListView;

    .line 43
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lece;->d:Landroid/widget/ListView;

    .line 44
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    .line 50
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lece;->a:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 59
    iget-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lece;->d:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    .line 62
    :cond_1
    iget-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    iget v2, p0, Lece;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 63
    iget-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 64
    iget-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lece;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v1, p0, Lece;->c:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "floatView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 85
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "floatView":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lece;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    iput-object v1, p0, Lece;->a:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method
