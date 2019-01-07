.class Lcom/amap/api/mapcore/util/eq$2;
.super Landroid/graphics/drawable/Drawable;
.source "IndoorFloorSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/eq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/eq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/eq;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eq;->g(Lcom/amap/api/mapcore/util/eq;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 333
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 339
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 340
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 341
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 343
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 344
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 345
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->h(Lcom/amap/api/mapcore/util/eq;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 346
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->h(Lcom/amap/api/mapcore/util/eq;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 348
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 349
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->i(Lcom/amap/api/mapcore/util/eq;)[I

    move-result-object v3

    aget v3, v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 350
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->j(Lcom/amap/api/mapcore/util/eq;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 351
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->i(Lcom/amap/api/mapcore/util/eq;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 353
    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->h(Lcom/amap/api/mapcore/util/eq;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 355
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 361
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->k(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$2;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->l(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 366
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 367
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eq$2;->a(Landroid/graphics/Canvas;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eq$2;->b(Landroid/graphics/Canvas;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/eq$2;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method
