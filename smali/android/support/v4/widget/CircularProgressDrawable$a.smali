.class final Landroid/support/v4/widget/CircularProgressDrawable$a;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:F

.field r:I

.field s:I

.field t:I

.field u:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->a:Landroid/graphics/RectF;

    .line 617
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    .line 618
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->c:Landroid/graphics/Paint;

    .line 619
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->d:Landroid/graphics/Paint;

    .line 621
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    .line 622
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    .line 623
    iput v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    .line 624
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->h:F

    .line 636
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->p:F

    .line 640
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->t:I

    .line 644
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 645
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 646
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 648
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 649
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 651
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 802
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->i:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method final a(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 835
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->h:F

    .line 836
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    return-void
.end method

.method final a(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 790
    iput p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j:I

    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->i:[I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->u:I

    .line 792
    return-void
.end method

.method final a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 894
    iget-boolean v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->n:Z

    if-eq v0, p1, :cond_0

    .line 895
    iput-boolean p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->n:Z

    .line 897
    :cond_0
    return-void
.end method

.method final a([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 754
    iput-object p1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->i:[I

    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircularProgressDrawable$a;->a(I)V

    .line 757
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->i:[I

    iget v1, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->j:I

    aget v0, v0, v1

    return v0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->k:F

    .line 929
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->l:F

    .line 930
    iget v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->m:F

    .line 931
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 937
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->k:F

    .line 938
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->l:F

    .line 939
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->m:F

    .line 1844
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->e:F

    .line 1864
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->f:F

    .line 1872
    iput v0, p0, Landroid/support/v4/widget/CircularProgressDrawable$a;->g:F

    .line 943
    return-void
.end method
