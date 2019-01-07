.class final Lkfc$2;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkfc$c;

.field final synthetic b:Lkfc;


# direct methods
.method constructor <init>(Lkfc;Lkfc$c;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lkfc$2;->b:Lkfc;

    iput-object p2, p0, Lkfc$2;->a:Lkfc$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 333
    iget-object v3, p0, Lkfc$2;->a:Lkfc$c;

    .line 1678
    iget v3, v3, Lkfc$c;->n:F

    .line 333
    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 335
    .local v2, "targetRotation":F
    iget-object v3, p0, Lkfc$2;->a:Lkfc$c;

    .line 2597
    iget v3, v3, Lkfc$c;->l:F

    .line 335
    iget-object v4, p0, Lkfc$2;->a:Lkfc$c;

    .line 2601
    iget v4, v4, Lkfc$c;->m:F

    .line 335
    iget-object v5, p0, Lkfc$2;->a:Lkfc$c;

    .line 3597
    iget v5, v5, Lkfc$c;->l:F

    .line 335
    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 338
    .local v1, "startTrim":F
    iget-object v3, p0, Lkfc$2;->a:Lkfc$c;

    invoke-virtual {v3, v1}, Lkfc$c;->a(F)V

    .line 339
    iget-object v3, p0, Lkfc$2;->a:Lkfc$c;

    .line 3678
    iget v3, v3, Lkfc$c;->n:F

    .line 339
    iget-object v4, p0, Lkfc$2;->a:Lkfc$c;

    .line 4678
    iget v4, v4, Lkfc$c;->n:F

    .line 339
    sub-float v4, v2, v4

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 341
    .local v0, "rotation":F
    iget-object v3, p0, Lkfc$2;->a:Lkfc$c;

    invoke-virtual {v3, v0}, Lkfc$c;->c(F)V

    .line 342
    iget-object v3, p0, Lkfc$2;->a:Lkfc$c;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lkfc$c;->d(F)V

    .line 343
    return-void
.end method
