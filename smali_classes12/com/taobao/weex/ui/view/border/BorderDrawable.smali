.class public Lcom/taobao/weex/ui/view/border/BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# static fields
.field public static final BORDER_BOTTOM_LEFT_RADIUS:I = 0x3

.field public static final BORDER_BOTTOM_RIGHT_RADIUS:I = 0x2

.field public static final BORDER_RADIUS_ALL:I = 0x5

.field public static final BORDER_TOP_LEFT_RADIUS:I = 0x0

.field public static final BORDER_TOP_RIGHT_RADIUS:I = 0x1

.field static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Border"

.field private static sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;


# instance fields
.field private mAlpha:I

.field private mBorderColor:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

.field private mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand",
            "<",
            "Lcom/taobao/weex/dom/CSSShorthand$CORNER;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderStyle:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand",
            "<",
            "Lcom/taobao/weex/dom/CSSShorthand$EDGE;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

.field private mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

.field private mColor:I

.field private mNeedUpdatePath:Z

.field private mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand",
            "<",
            "Lcom/taobao/weex/dom/CSSShorthand$CORNER;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderOutline:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRectBounds:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/Shader;

.field private mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

.field private mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 76
    invoke-static {}, Lcom/taobao/weex/ui/view/border/BorderStyle;->values()[Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 97
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 98
    iput v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    .line 103
    const/16 v0, 0xff

    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 110
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderEdge;

    invoke-direct {v0}, Lcom/taobao/weex/ui/view/border/BorderEdge;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    .line 115
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    if-nez v4, :cond_0

    .line 436
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    .line 441
    :goto_0
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v4, :cond_1

    .line 470
    :goto_1
    return-void

    .line 438
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v1

    .line 445
    .local v1, "leftBorderWidth":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    .line 446
    .local v3, "topBorderWidth":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    .line 447
    .local v0, "bottomBorderWidth":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    .line 449
    .local v2, "rightBorderWidth":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    if-nez v4, :cond_2

    .line 450
    new-instance v4, Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    .line 452
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 453
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    if-nez v4, :cond_3

    .line 454
    new-instance v4, Lcom/taobao/weex/ui/view/border/TopRightCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/TopRightCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    .line 456
    :cond_3
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/taobao/weex/ui/view/border/TopRightCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 457
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    if-nez v4, :cond_4

    .line 458
    new-instance v4, Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    .line 460
    :cond_4
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 461
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    if-nez v4, :cond_5

    .line 462
    new-instance v4, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    .line 464
    :cond_5
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 466
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 467
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 468
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 469
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    goto/16 :goto_1
.end method

.method private drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "borderEdge"    # Lcom/taobao/weex/ui/view/border/BorderEdge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getBorderWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V

    .line 483
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderEdge;->drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 485
    :cond_0
    return-void
.end method

.method private getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F
    .locals 1
    .param p1, "position"    # Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScaleFactor(Landroid/graphics/RectF;)F
    .locals 9
    .param p1, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v6

    iget-object v7, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v8, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 407
    invoke-virtual {v7, v8}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v7

    add-float v5, v6, v7

    .line 408
    .local v5, "topRadius":F
    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v6

    iget-object v7, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v8, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 409
    invoke-virtual {v7, v8}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v7

    add-float v4, v6, v7

    .line 410
    .local v4, "rightRadius":F
    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v6

    iget-object v7, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v8, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 411
    invoke-virtual {v7, v8}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v7

    add-float v0, v6, v7

    .line 412
    .local v0, "bottomRadius":F
    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v6

    iget-object v7, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v8, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 413
    invoke-virtual {v7, v8}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v7

    add-float v3, v6, v7

    .line 414
    .local v3, "leftRadius":F
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v2, "factors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-direct {p0, v2, v6, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 416
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {p0, v2, v6, v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-direct {p0, v2, v6, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {p0, v2, v6, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 420
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    const/high16 v1, 0x7fc00000    # NaNf

    .line 425
    .local v1, "factor":F
    :goto_0
    return v1

    .line 423
    .end local v1    # "factor":F
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .restart local v1    # "factor":F
    goto :goto_0
.end method

.method private prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7
    .param p1, "topPadding"    # I
    .param p2, "rightPadding"    # I
    .param p3, "bottomPadding"    # I
    .param p4, "leftPadding"    # I
    .param p5, "rectF"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "path"    # Landroid/graphics/Path;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v4, :cond_1

    .line 348
    invoke-direct {p0, p5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 349
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v4, :cond_0

    .line 350
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v2

    .line 353
    .local v2, "topLeftRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 354
    .local v3, "topRightRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v1

    .line 355
    .local v1, "bottomRightRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    .line 356
    .local v0, "bottomLeftRadius":F
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, p4

    sub-float v6, v2, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, p1

    sub-float v6, v2, v6

    aput v6, v4, v5

    const/4 v5, 0x2

    int-to-float v6, p2

    sub-float v6, v3, v6

    aput v6, v4, v5

    const/4 v5, 0x3

    int-to-float v6, p1

    sub-float v6, v3, v6

    aput v6, v4, v5

    const/4 v5, 0x4

    int-to-float v6, p2

    sub-float v6, v1, v6

    aput v6, v4, v5

    const/4 v5, 0x5

    int-to-float v6, p3

    sub-float v6, v1, v6

    aput v6, v4, v5

    const/4 v5, 0x6

    int-to-float v6, p4

    sub-float v6, v0, v6

    aput v6, v4, v5

    const/4 v5, 0x7

    int-to-float v6, p3

    sub-float v6, v0, v6

    aput v6, v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 372
    .end local v0    # "bottomLeftRadius":F
    .end local v1    # "bottomRightRadius":F
    .end local v2    # "topLeftRadius":F
    .end local v3    # "topRightRadius":F
    :goto_0
    return-void

    .line 370
    :cond_1
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0
.end method

.method private prepareBorderRadius(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 378
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v1, :cond_1

    .line 379
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getScaleFactor(Landroid/graphics/RectF;)F

    move-result v0

    .line 380
    .local v0, "factor":F
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v1, :cond_0

    .line 381
    new-instance v1, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 383
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 385
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 384
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 386
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 387
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 386
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 388
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 389
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 388
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 390
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 391
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 390
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 403
    .end local v0    # "factor":F
    :cond_1
    :goto_0
    return-void

    .line 393
    .restart local v0    # "factor":F
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 394
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 393
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 395
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 396
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 395
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 397
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 398
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 397
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 399
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 400
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 399
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_0
.end method

.method private preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V
    .locals 6
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 488
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v1

    .line 489
    .local v1, "borderWidth":F
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v4

    iget v5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v2

    .line 490
    .local v2, "color":I
    sget-object v4, Lcom/taobao/weex/ui/view/border/BorderDrawable;->sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v5

    aget-object v0, v4, v5

    .line 491
    .local v0, "borderStyle":Lcom/taobao/weex/ui/view/border/BorderStyle;
    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->getLineShader(FILcom/taobao/weex/dom/CSSShorthand$EDGE;)Landroid/graphics/Shader;

    move-result-object v3

    .line 492
    .local v3, "shader":Landroid/graphics/Shader;
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 493
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 495
    return-void
.end method

.method private updateBorderOutline()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    if-eqz v0, :cond_1

    .line 332
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 333
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 337
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 339
    :cond_1
    return-void
.end method

.method private updateFactor(Ljava/util/List;FF)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "numerator"    # F
    .param p3, "denominator"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    .line 430
    div-float v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBorderOutline()V

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    .line 124
    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v0

    .line 125
    .local v0, "useColor":I
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    .end local v0    # "useColor":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawBorders(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    return-void

    .line 130
    .restart local v0    # "useColor":I
    :cond_1
    ushr-int/lit8 v1, v0, 0x18

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    return v0
.end method

.method getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I
    .locals 3
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result v0

    return v0
.end method

.method public getBorderInnerRadius(Landroid/graphics/RectF;)[F
    .locals 7
    .param p1, "borderBox"    # Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 242
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v4, :cond_0

    .line 243
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v2

    .line 246
    .local v2, "topLeftRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 247
    .local v3, "topRightRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v1

    .line 248
    .local v1, "bottomRightRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    .line 249
    .local v0, "bottomLeftRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sub-float v4, v2, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 251
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 252
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 253
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sub-float v4, v0, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 255
    :cond_1
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v5, 0x3

    aput v3, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    const/4 v5, 0x5

    aput v1, v4, v5

    const/4 v5, 0x6

    aput v0, v4, v5

    const/4 v5, 0x7

    aput v0, v4, v5

    return-object v4
.end method

.method public getBorderRadius(Landroid/graphics/RectF;)[F
    .locals 6
    .param p1, "borderBox"    # Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 225
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v4, :cond_0

    .line 226
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v2

    .line 229
    .local v2, "topLeftRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v3

    .line 230
    .local v3, "topRightRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v1

    .line 231
    .local v1, "bottomRightRadius":F
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    .line 232
    .local v0, "bottomLeftRadius":F
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v5, 0x3

    aput v3, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    const/4 v5, 0x5

    aput v1, v4, v5

    const/4 v5, 0x6

    aput v0, v4, v5

    const/4 v5, 0x7

    aput v0, v4, v5

    return-object v4
.end method

.method getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I
    .locals 3
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result v0

    return v0
.end method

.method getBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F
    .locals 1
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    return v0
.end method

.method public getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 7
    .param p1, "borderBox"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 325
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .local v6, "contentClip":Landroid/graphics/Path;
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p1

    .line 326
    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 327
    return-object v6
.end method

.method public getOpacity()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 174
    :goto_0
    return v0

    .line 173
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 174
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getOpacityFromColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBorderOutline()V

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 188
    :cond_1
    return-void
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRounded()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 316
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 317
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 318
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 319
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 148
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 153
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 154
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    .line 156
    :cond_0
    return-void
.end method

.method public setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V
    .locals 3
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p2, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 267
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 268
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    .line 270
    :cond_1
    return-void
.end method

.method public setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V
    .locals 2
    .param p1, "position"    # Lcom/taobao/weex/dom/CSSShorthand$CORNER;
    .param p2, "radius"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 211
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 212
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 213
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 214
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 217
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    .line 219
    :cond_2
    return-void
.end method

.method public setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V
    .locals 5
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p2, "style"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    if-nez v2, :cond_0

    .line 278
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    .line 279
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v3

    sget-object v4, Lcom/taobao/weex/ui/view/border/BorderDrawable;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    :cond_0
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v0

    .line 283
    .local v0, "borderStyle":I
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 284
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/taobao/weex/ui/view/border/BorderUtil;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 285
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "borderStyle":I
    :cond_1
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "Border"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p2, "width"    # F

    .prologue
    .line 191
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 197
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    .line 199
    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    .line 302
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    .line 303
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 169
    return-void
.end method

.method public setImage(Landroid/graphics/Shader;)V
    .locals 0
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    .line 307
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    .line 308
    return-void
.end method
