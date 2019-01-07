.class public Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;
.super Landroid/view/View;
.source "ColorPickBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;,
        Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/Paint;

.field private h:F

.field private i:F

.field private j:F

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

.field private m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->h:F

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->i:F

    .line 26
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->j:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->k:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 29
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->n:Z

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->o:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->h:F

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->i:F

    .line 26
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->j:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->k:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 29
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->n:Z

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->o:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->h:F

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->i:F

    .line 26
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->j:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->k:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 29
    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->n:Z

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->o:I

    .line 44
    return-void
.end method

.method private a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 74
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->b:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a:I

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->c:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    iget v9, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->h:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    div-float v4, v6, v11

    .line 76
    .local v4, "radius":F
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->d:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->d:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v4, v6

    .line 77
    :cond_2
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->h:F

    mul-float v3, v4, v6

    .line 78
    .local v3, "padding":F
    mul-float v6, v11, v4

    add-float v1, v6, v3

    .line 80
    .local v1, "diameter":F
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v13, :cond_3

    .line 81
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->c:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float v5, v6, v7

    .line 85
    .local v5, "start":F
    :goto_1
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 86
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 87
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    invoke-direct {v0, p0, v12}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;-><init>(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;B)V

    .line 88
    .local v0, "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->d:I

    .line 89
    iput-boolean v12, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    .line 90
    iput v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->e:F

    .line 91
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->i:F

    mul-float/2addr v6, v4

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->f:F

    .line 92
    int-to-float v6, v2

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->b:F

    .line 93
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->b:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->c:F

    .line 94
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->j:F

    mul-float/2addr v6, v4

    iput v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->g:F

    .line 95
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->b:F

    sub-float/2addr v7, v4

    iget v8, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->c:F

    sub-float/2addr v8, v4

    iget v9, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->b:F

    add-float/2addr v9, v4

    iget v10, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->c:F

    add-float/2addr v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->a:Landroid/graphics/RectF;

    .line 96
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    .end local v0    # "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
    .end local v2    # "i":I
    .end local v5    # "start":F
    :cond_3
    iget v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->c:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    iget-object v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    div-float v7, v1, v11

    sub-float v5, v6, v7

    .restart local v5    # "start":F
    goto :goto_1

    .line 98
    .restart local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->o:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    iput-boolean v13, v6, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    .line 99
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->o:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    iput-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 100
    iget-object v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    iget v7, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->o:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    iget v6, v6, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->d:I

    invoke-direct {p0, v6}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(I)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->postInvalidate()V

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 3
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;

    .line 147
    .local v0, "colorPickListener":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;
    invoke-interface {v0, p1}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;->a(I)V

    goto :goto_0

    .line 149
    .end local v0    # "colorPickListener":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;)V
    .locals 1
    .param p1, "mColorPickListener"    # Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "color":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0    # "color":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a()V

    .line 60
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 107
    .local v0, "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->b:F

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->c:F

    iget v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->f:F

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    iget-boolean v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->g:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget v2, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->b:F

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->c:F

    iget v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->e:F

    iget v5, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->g:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 116
    .end local v0    # "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
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
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a:I

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->b:I

    .line 67
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a:I

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->c:I

    .line 68
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->b:I

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->d:I

    .line 69
    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a:I

    if-gtz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a()V

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

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 121
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 122
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 142
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 124
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    iput-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 125
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 126
    .local v0, "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
    iget-object v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->a:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iput-boolean v5, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->n:Z

    .line 128
    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->m:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    .line 129
    iput-boolean v5, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    .line 130
    iget v4, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->d:I

    invoke-direct {p0, v4}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(I)V

    goto :goto_1

    .line 132
    :cond_0
    iput-boolean v6, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    goto :goto_1

    .line 135
    .end local v0    # "circle":Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->n:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->l:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;

    iput-boolean v5, v3, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$a;->h:Z

    .line 138
    :cond_2
    iput-boolean v6, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->n:Z

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->postInvalidate()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
