.class Lcom/taobao/weex/ui/view/border/BorderEdge;
.super Ljava/lang/Object;
.source "BorderEdge.java"


# instance fields
.field private mBorderWidth:F

.field private mEdge:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field private mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getAngleBisectorDegree()F

    move-result v5

    invoke-virtual {v0, p1, p2, v5}, Lcom/taobao/weex/ui/view/border/BorderCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 65
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndX()F

    move-result v1

    .line 68
    .local v1, "lineStartX":F
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndY()F

    move-result v2

    .line 70
    .local v2, "lineStartY":F
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartX()F

    move-result v3

    .line 71
    .local v3, "lineEndX":F
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartY()F

    move-result v4

    .local v4, "lineEndY":F
    move-object v0, p1

    move-object v5, p2

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getAngleBisectorDegree()F

    move-result v5

    const/high16 v6, 0x42340000    # 45.0f

    sub-float/2addr v5, v6

    invoke-virtual {v0, p1, p2, v5}, Lcom/taobao/weex/ui/view/border/BorderCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 76
    return-void
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    return v0
.end method

.method public getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mEdge:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object v0
.end method

.method set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;
    .locals 0
    .param p1, "preCorner"    # Lcom/taobao/weex/ui/view/border/BorderCorner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postCorner"    # Lcom/taobao/weex/ui/view/border/BorderCorner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "borderWidth"    # F
    .param p4, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    .line 49
    iput-object p2, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    .line 50
    iput p3, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    .line 51
    iput-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mEdge:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 52
    return-object p0
.end method
