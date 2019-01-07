.class public final Lezc;
.super Landroid/view/animation/Animation;
.source "RotateAnimationOf3D.java"


# instance fields
.field public a:F

.field public b:Z

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 33
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lezc;->a:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lezc;->b:Z

    .line 38
    iput p1, p0, Lezc;->c:F

    .line 39
    iput p2, p0, Lezc;->d:F

    .line 40
    iput p3, p0, Lezc;->e:F

    .line 41
    iput p4, p0, Lezc;->f:F

    .line 42
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 60
    iget v4, p0, Lezc;->c:F

    .line 61
    .local v4, "fromDegrees":F
    iget v6, p0, Lezc;->d:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 62
    .local v3, "degrees":F
    iget v1, p0, Lezc;->e:F

    .line 63
    .local v1, "centerX":F
    iget v2, p0, Lezc;->f:F

    .line 64
    .local v2, "centerY":F
    iget-object v0, p0, Lezc;->g:Landroid/graphics/Camera;

    .line 65
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 66
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 67
    iget-boolean v6, p0, Lezc;->b:Z

    if-eqz v6, :cond_0

    .line 68
    iget v6, p0, Lezc;->a:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 73
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 74
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 77
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 78
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    return-void

    .line 70
    :cond_0
    iget v6, p0, Lezc;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 55
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lezc;->g:Landroid/graphics/Camera;

    .line 56
    return-void
.end method
