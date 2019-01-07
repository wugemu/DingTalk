.class public Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RotableLinearLayout.java"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lhbv;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->c:Landroid/graphics/Point;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lhbv;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->c:Landroid/graphics/Point;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lhbv;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->c:Landroid/graphics/Point;

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v5, 0x42b40000    # 90.0f

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "transX":I
    const/4 v2, 0x0

    .line 54
    .local v2, "transY":I
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    .local v0, "p":Landroid/view/ViewGroup;
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    if-nez v3, :cond_1

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 57
    add-int/lit8 v1, v1, 0x0

    .line 58
    add-int/lit8 v2, v2, 0x0

    .line 85
    :cond_0
    :goto_0
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setTranslationX(F)V

    .line 86
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setTranslationY(F)V

    .line 88
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 90
    return-void

    .line 59
    :cond_1
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 60
    invoke-virtual {p0, v5}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x0

    goto :goto_0

    .line 63
    :cond_2
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    .line 64
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x0

    .line 66
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x0

    goto :goto_0

    .line 67
    :cond_3
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_4

    .line 68
    invoke-virtual {p0, v6}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x0

    goto :goto_0

    .line 72
    :cond_4
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    const/16 v4, -0x10e

    if-ne v3, v4, :cond_5

    .line 73
    invoke-virtual {p0, v5}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    neg-int v3, v3

    add-int/lit8 v1, v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x0

    goto/16 :goto_0

    .line 76
    :cond_5
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    const/16 v4, -0xb4

    if-ne v3, v4, :cond_6

    .line 77
    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    add-int/lit8 v1, v3, 0x0

    .line 79
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    add-int/lit8 v2, v3, 0x0

    goto/16 :goto_0

    .line 80
    :cond_6
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    const/16 v4, -0x5a

    if-ne v3, v4, :cond_0

    .line 81
    invoke-virtual {p0, v6}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setRotation(F)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x0

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    neg-int v3, v3

    add-int/lit8 v2, v3, 0x0

    goto/16 :goto_0
.end method

.method public setChangDegree(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    if-eq v0, p1, :cond_0

    .line 44
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->a:I

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->requestLayout()V

    .line 47
    :cond_0
    return-void
.end method
