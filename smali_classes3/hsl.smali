.class public final Lhsl;
.super Ljava/lang/Object;
.source "MasicAction.java"

# interfaces
.implements Lhsi;


# instance fields
.field a:Landroid/graphics/Path;

.field b:Landroid/graphics/Paint;

.field c:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "width"    # F

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lhsl;->b:Landroid/graphics/Paint;

    .line 19
    iput-object p1, p0, Lhsl;->a:Landroid/graphics/Path;

    .line 20
    iput p3, p0, Lhsl;->c:F

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 25
    iget-object v0, p0, Lhsl;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lhsl;->b:Landroid/graphics/Paint;

    sget-object v1, Lhsp;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    iget-object v0, p0, Lhsl;->b:Landroid/graphics/Paint;

    iget v1, p0, Lhsl;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lhsl;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lhsl;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    iget-object v1, p0, Lhsl;->a:Landroid/graphics/Path;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 34
    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    iget-object v1, p0, Lhsl;->a:Landroid/graphics/Path;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 44
    return-void
.end method
