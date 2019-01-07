.class public final Lctb;
.super Ljava/lang/Object;
.source "WaveCircle.java"


# instance fields
.field public a:F

.field public b:I

.field public c:Landroid/graphics/Paint;

.field public d:F


# direct methods
.method public constructor <init>(IFI)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "radius"    # F
    .param p3, "alpha"    # I

    .prologue
    const/16 v1, 0xff

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lctb;->d:F

    .line 24
    iput p2, p0, Lctb;->a:F

    .line 25
    iput v1, p0, Lctb;->b:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lctb;->c:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lctb;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    iget-object v0, p0, Lctb;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lctb;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    iget-object v0, p0, Lctb;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lctb;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    return-void
.end method
