.class public final Lkfc$c;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:[I

.field public k:I

.field l:F

.field m:F

.field n:F

.field o:Z

.field p:Landroid/graphics/Path;

.field q:F

.field r:D

.field s:I

.field t:I

.field u:I

.field public v:I

.field private final w:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lkfc$c;->a:Landroid/graphics/RectF;

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lkfc$c;->b:Landroid/graphics/Paint;

    .line 420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lkfc$c;->c:Landroid/graphics/Paint;

    .line 422
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lkfc$c;->d:Landroid/graphics/Paint;

    .line 423
    iput v1, p0, Lkfc$c;->e:F

    .line 424
    iput v1, p0, Lkfc$c;->f:F

    .line 425
    iput v1, p0, Lkfc$c;->g:F

    .line 426
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lkfc$c;->h:F

    .line 427
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lkfc$c;->i:F

    .line 446
    iput-object p1, p0, Lkfc$c;->w:Landroid/graphics/drawable/Drawable$Callback;

    .line 447
    iget-object v0, p0, Lkfc$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 448
    iget-object v0, p0, Lkfc$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 449
    iget-object v0, p0, Lkfc$c;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object v0, p0, Lkfc$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    iget-object v0, p0, Lkfc$c;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    iget-object v0, p0, Lkfc$c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 454
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 549
    iget v0, p0, Lkfc$c;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lkfc$c;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lkfc$c;->k:I

    .line 550
    return-void
.end method

.method public final a(F)V
    .locals 0
    .param p1, "startTrim"    # F

    .prologue
    .line 592
    iput p1, p0, Lkfc$c;->e:F

    .line 593
    invoke-virtual {p0}, Lkfc$c;->d()V

    .line 594
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 658
    iget-boolean v0, p0, Lkfc$c;->o:Z

    if-eq v0, p1, :cond_0

    .line 659
    iput-boolean p1, p0, Lkfc$c;->o:Z

    .line 660
    invoke-virtual {p0}, Lkfc$c;->d()V

    .line 662
    :cond_0
    return-void
.end method

.method public final a([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 531
    iput-object p1, p0, Lkfc$c;->j:[I

    .line 1541
    const/4 v0, 0x0

    iput v0, p0, Lkfc$c;->k:I

    .line 534
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lkfc$c;->e:F

    iput v0, p0, Lkfc$c;->l:F

    .line 687
    iget v0, p0, Lkfc$c;->f:F

    iput v0, p0, Lkfc$c;->m:F

    .line 688
    iget v0, p0, Lkfc$c;->g:F

    iput v0, p0, Lkfc$c;->n:F

    .line 689
    return-void
.end method

.method public final b(F)V
    .locals 0
    .param p1, "endTrim"    # F

    .prologue
    .line 611
    iput p1, p0, Lkfc$c;->f:F

    .line 612
    invoke-virtual {p0}, Lkfc$c;->d()V

    .line 613
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 695
    iput v0, p0, Lkfc$c;->l:F

    .line 696
    iput v0, p0, Lkfc$c;->m:F

    .line 697
    iput v0, p0, Lkfc$c;->n:F

    .line 698
    invoke-virtual {p0, v0}, Lkfc$c;->a(F)V

    .line 699
    invoke-virtual {p0, v0}, Lkfc$c;->b(F)V

    .line 700
    invoke-virtual {p0, v0}, Lkfc$c;->c(F)V

    .line 701
    return-void
.end method

.method public final c(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 622
    iput p1, p0, Lkfc$c;->g:F

    .line 623
    invoke-virtual {p0}, Lkfc$c;->d()V

    .line 624
    return-void
.end method

.method d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 704
    iget-object v0, p0, Lkfc$c;->w:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    return-void
.end method

.method public final d(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 668
    iget v0, p0, Lkfc$c;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 669
    iput p1, p0, Lkfc$c;->q:F

    .line 670
    invoke-virtual {p0}, Lkfc$c;->d()V

    .line 672
    :cond_0
    return-void
.end method
