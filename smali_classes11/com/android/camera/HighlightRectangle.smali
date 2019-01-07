.class final Lcom/android/camera/HighlightRectangle;
.super Ljava/lang/Object;
.source "HighlightRectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HighlightRectangle$ModifyMode;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/graphics/Rect;

.field c:Landroid/graphics/RectF;

.field d:Landroid/graphics/RectF;

.field e:Landroid/graphics/Matrix;

.field f:Z

.field g:F

.field h:Landroid/graphics/drawable/Drawable;

.field final i:Landroid/graphics/Paint;

.field final j:Landroid/graphics/Paint;

.field final k:Landroid/graphics/Paint;

.field l:Landroid/graphics/Path;

.field m:Landroid/graphics/Rect;

.field n:Lcom/android/camera/HighlightRectangle$ModifyMode;

.field o:Z

.field p:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "ctx"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/android/camera/HighlightRectangle;->f:Z

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->i:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->j:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->k:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->l:Landroid/graphics/Path;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->m:Landroid/graphics/Rect;

    .line 70
    sget-object v0, Lcom/android/camera/HighlightRectangle$ModifyMode;->Normal:Lcom/android/camera/HighlightRectangle$ModifyMode;

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->n:Lcom/android/camera/HighlightRectangle$ModifyMode;

    .line 73
    iput-object p1, p0, Lcom/android/camera/HighlightRectangle;->a:Landroid/view/View;

    .line 74
    iput-boolean v1, p0, Lcom/android/camera/HighlightRectangle;->p:Z

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 325
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final a(Lcom/android/camera/HighlightRectangle$ModifyMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/camera/HighlightRectangle$ModifyMode;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/HighlightRectangle;->n:Lcom/android/camera/HighlightRectangle$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 179
    iput-object p1, p0, Lcom/android/camera/HighlightRectangle;->n:Lcom/android/camera/HighlightRectangle$ModifyMode;

    .line 180
    iget-object v0, p0, Lcom/android/camera/HighlightRectangle;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method b()Landroid/graphics/Rect;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/HighlightRectangle;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 333
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/HighlightRectangle;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 334
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 335
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/camera/HighlightRectangle;->b()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HighlightRectangle;->b:Landroid/graphics/Rect;

    .line 340
    return-void
.end method
