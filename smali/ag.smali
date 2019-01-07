.class final Lag;
.super Landroid/view/View;
.source "GhostViewApi14.java"

# interfaces
.implements Lai;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag$a;
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/View;

.field d:I

.field e:Landroid/graphics/Matrix;

.field private f:I

.field private g:I

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lag;->h:Landroid/graphics/Matrix;

    .line 120
    new-instance v0, Lag$1;

    invoke-direct {v0, p0}, Lag$1;-><init>(Lag;)V

    iput-object v0, p0, Lag;->i:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 140
    iput-object p1, p0, Lag;->a:Landroid/view/View;

    .line 141
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lag;->setLayerType(ILandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method static a(Landroid/view/View;)Lag;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    sget v0, Lay$a;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag;

    return-object v0
.end method

.method private static a(Landroid/view/View;Lag;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "ghostView"    # Lag;

    .prologue
    .line 194
    sget v0, Lay$a;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 195
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 189
    iput-object p1, p0, Lag;->b:Landroid/view/ViewGroup;

    .line 190
    iput-object p2, p0, Lag;->c:Landroid/view/View;

    .line 191
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 147
    iget-object v2, p0, Lag;->a:Landroid/view/View;

    invoke-static {v2, p0}, Lag;->a(Landroid/view/View;Lag;)V

    .line 149
    new-array v0, v3, [I

    .line 150
    .local v0, "location":[I
    new-array v1, v3, [I

    .line 151
    .local v1, "viewLocation":[I
    invoke-virtual {p0, v0}, Lag;->getLocationOnScreen([I)V

    .line 152
    iget-object v2, p0, Lag;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 153
    aget v2, v1, v4

    int-to-float v2, v2

    iget-object v3, p0, Lag;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v4

    .line 154
    aget v2, v1, v5

    int-to-float v2, v2

    iget-object v3, p0, Lag;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    .line 155
    aget v2, v1, v4

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lag;->f:I

    .line 156
    aget v2, v1, v5

    aget v3, v0, v5

    sub-int/2addr v2, v3

    iput v2, p0, Lag;->g:I

    .line 158
    iget-object v2, p0, Lag;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lag;->i:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    iget-object v2, p0, Lag;->a:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lag;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lag;->i:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 166
    iget-object v0, p0, Lag;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lag;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lag;->a(Landroid/view/View;Lag;)V

    .line 168
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 169
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Lag;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lag;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 175
    iget-object v0, p0, Lag;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lag;->f:I

    int-to-float v1, v1

    iget v2, p0, Lag;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 176
    iget-object v0, p0, Lag;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 178
    iget-object v0, p0, Lag;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method public final setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lag;->a:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
