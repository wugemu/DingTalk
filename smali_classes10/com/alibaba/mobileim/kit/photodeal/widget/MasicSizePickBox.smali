.class public Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;
.super Landroid/view/View;
.source "MasicSizePickBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;,
        Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/graphics/Paint;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:F

.field private l:F

.field private m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

.field private n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    .line 26
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->k:F

    .line 28
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->c:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 31
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->o:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->d:I

    .line 34
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->e:F

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->p:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    .line 26
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->k:F

    .line 28
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->c:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 31
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->o:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->d:I

    .line 34
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->e:F

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->p:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    .line 26
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->k:F

    .line 28
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->c:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 31
    iput-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->o:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->d:I

    .line 34
    iput v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->e:F

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->p:I

    .line 47
    return-void
.end method

.method private a(F)V
    .locals 3
    .param p1, "size"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;

    .line 184
    .local v0, "masicSizePickListener":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;
    invoke-interface {v0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;->a(F)V

    goto :goto_0

    .line 186
    .end local v0    # "masicSizePickListener":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$b;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 82
    .local v2, "count":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->g:I

    if-lez v10, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->f:I

    if-lez v10, :cond_0

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v10, 0x1

    if-ne v2, v10, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 85
    .local v6, "scalePower":F
    :goto_1
    const/4 v9, 0x0

    .line 86
    .local v9, "totalScale":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    int-to-float v11, v3

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    .end local v3    # "i":I
    .end local v6    # "scalePower":F
    .end local v9    # "totalScale":F
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    sub-float/2addr v10, v11

    add-int/lit8 v11, v2, -0x1

    int-to-float v11, v11

    div-float v6, v10, v11

    goto :goto_1

    .line 89
    .restart local v3    # "i":I
    .restart local v6    # "scalePower":F
    .restart local v9    # "totalScale":F
    :cond_3
    add-int/lit8 v10, v2, -0x1

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->k:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 90
    const v10, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->h:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    div-float/2addr v10, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v10, v11

    .line 91
    .local v4, "maxRadius":F
    const v10, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->i:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpl-float v10, v4, v10

    if-lez v10, :cond_4

    const v10, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->i:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v10, v11

    .line 93
    :cond_4
    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v10, v4

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->e:F

    .line 94
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->e:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->k:F

    mul-float v5, v10, v11

    .line 98
    .local v5, "padding":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->h:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v7, v10, v11

    .line 99
    .local v7, "start":F
    const/4 v8, 0x0

    .line 100
    .local v8, "totalLength":F
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_5

    .line 101
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    int-to-float v12, v3

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 103
    :cond_5
    add-int/lit8 v10, v2, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v8, v10

    .line 104
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v8, v10

    sub-float v10, v7, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    mul-float/2addr v11, v4

    add-float v7, v10, v11

    .line 106
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 107
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 108
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    .line 109
    new-instance v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v10}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;B)V

    .line 110
    .local v1, "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->d:Z

    .line 111
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    iput v10, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->f:F

    .line 112
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    int-to-float v11, v3

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    mul-float/2addr v10, v4

    iput v10, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    .line 113
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    if-nez v10, :cond_6

    .line 114
    iput v7, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    .line 118
    :goto_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->g:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iput v10, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->b:F

    .line 119
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    iget v12, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    sub-float/2addr v11, v12

    iget v12, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->b:F

    iget v13, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    sub-float/2addr v12, v13

    iget v13, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    iget v14, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    add-float/2addr v13, v14

    iget v14, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->b:F

    iget v15, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    add-float/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->e:Landroid/graphics/RectF;

    .line 120
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 121
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 116
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    iget v10, v10, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->l:F

    mul-float/2addr v11, v12

    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    add-float/2addr v10, v5

    iput v10, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    goto :goto_5

    .line 123
    .end local v1    # "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->p:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->d:Z

    .line 124
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->p:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    iget v10, v10, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->f:F

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a(F)V

    .line 126
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->postInvalidate()V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 133
    .local v0, "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->b:F

    iget v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget-boolean v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->d:Z

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->a:F

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->b:F

    iget v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->c:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 140
    .end local v0    # "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->f:I

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->g:I

    .line 74
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->f:I

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->h:I

    .line 75
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->g:I

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->i:I

    .line 76
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->f:I

    if-gtz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 145
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 146
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 166
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 148
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    iput-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 149
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 150
    .local v0, "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    iget-object v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->e:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iput-boolean v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->o:Z

    .line 152
    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->n:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    .line 153
    iput-boolean v5, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->d:Z

    .line 154
    iget v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->f:F

    invoke-direct {p0, v4}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a(F)V

    goto :goto_1

    .line 156
    :cond_0
    iput-boolean v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->d:Z

    goto :goto_1

    .line 159
    .end local v0    # "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->o:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    if-eqz v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;

    iput-boolean v5, v3, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox$a;->d:Z

    .line 162
    :cond_2
    iput-boolean v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->o:Z

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->postInvalidate()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->d:I

    .line 179
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    return-void
.end method
