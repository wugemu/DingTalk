.class final Lbr$a;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/reflect/Method;


# instance fields
.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/View;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field e:Lbr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 135
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lbr$a;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lbr;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;
    .param p4, "viewOverlay"    # Lbr;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lbr$a;->d:Ljava/util/ArrayList;

    .line 160
    iput-object p2, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    .line 161
    iput-object p3, p0, Lbr$a;->c:Landroid/view/View;

    .line 162
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr$a;->setRight(I)V

    .line 163
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lbr$a;->setBottom(I)V

    .line 164
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iput-object p4, p0, Lbr$a;->e:Lbr;

    .line 166
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 203
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    if-eq v1, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 204
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->D(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    new-array v2, v6, [I

    .line 208
    .local v2, "parentLocation":[I
    new-array v0, v6, [I

    .line 209
    .local v0, "hostViewLocation":[I
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 210
    iget-object v3, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 211
    aget v3, v2, v4

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 212
    aget v3, v2, v5

    aget v4, v0, v5

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 214
    .end local v0    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 221
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Lbr$a;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-super {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 225
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1242
    invoke-virtual {p0}, Lbr$a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbr$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr$a;->d:Ljava/util/ArrayList;

    .line 1243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 229
    :goto_0
    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    :cond_1
    return-void

    .line 1243
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 253
    new-array v0, v4, [I

    .line 254
    .local v0, "contentViewLocation":[I
    new-array v1, v4, [I

    .line 255
    .local v1, "hostViewLocation":[I
    iget-object v4, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 256
    iget-object v4, p0, Lbr$a;->c:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    aget v4, v1, v3

    aget v5, v0, v3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aget v5, v1, v6

    aget v6, v0, v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lbr$a;->c:Landroid/view/View;

    .line 260
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lbr$a;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 261
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 262
    iget-object v4, p0, Lbr$a;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 263
    .local v3, "numDrawables":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 264
    iget-object v4, p0, Lbr$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v2    # "i":I
    .end local v3    # "numDrawables":I
    :cond_0
    iget-object v4, p0, Lbr$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    .line 266
    .restart local v2    # "i":I
    .restart local v3    # "numDrawables":I
    :cond_1
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public final invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    iget-object v1, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 332
    aget v1, p1, v5

    aget v2, p1, v6

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 333
    iget-object v1, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 334
    aput v5, p1, v5

    .line 335
    aput v5, p1, v6

    .line 336
    new-array v0, v3, [I

    .line 1283
    .local v0, "offset":[I
    new-array v1, v3, [I

    .line 1284
    new-array v2, v3, [I

    .line 1285
    iget-object v3, p0, Lbr$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1286
    iget-object v3, p0, Lbr$a;->c:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1287
    aget v3, v2, v5

    aget v4, v1, v5

    sub-int/2addr v3, v4

    aput v3, v0, v5

    .line 1288
    aget v2, v2, v6

    aget v1, v1, v6

    sub-int v1, v2, v1

    aput v1, v0, v6

    .line 338
    aget v1, v0, v5

    aget v2, v0, v6

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 339
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    .line 345
    .end local v0    # "offset":[I
    :goto_0
    return-object v1

    .line 342
    :cond_0
    invoke-virtual {p0, p2}, Lbr$a;->invalidate(Landroid/graphics/Rect;)V

    .line 345
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr$a;->invalidate(Landroid/graphics/Rect;)V

    .line 249
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 271
    return-void
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
