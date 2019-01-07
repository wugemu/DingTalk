.class public Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RotableLinearLayout.java"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/Point;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->b:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->b:Landroid/content/Context;

    invoke-static {v0}, Lhbv;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->c:Landroid/graphics/Point;

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "position"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    if-ne v0, p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    .line 70
    iput p2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->requestLayout()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "transX":I
    const/4 v5, 0x0

    .line 78
    .local v5, "transY":I
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .local v1, "parent":Landroid/view/ViewGroup;
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    if-nez v7, :cond_1

    .line 81
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->setRotation(F)V

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    .line 154
    :cond_0
    :goto_0
    int-to-float v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->setTranslationX(F)V

    .line 155
    int-to-float v7, v5

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->setTranslationY(F)V

    .line 157
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 159
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 87
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->getMeasuredWidth()I

    move-result v6

    .line 88
    .local v6, "width":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    .line 89
    .local v2, "parentHeight":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 91
    .local v3, "parentWidth":I
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_5

    .line 92
    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->setRotation(F)V

    .line 94
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    if-nez v7, :cond_2

    .line 95
    sub-int v7, v0, v6

    div-int/lit8 v4, v7, 0x2

    .line 96
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v0, 0x2

    sub-int v5, v7, v8

    goto :goto_0

    .line 98
    :cond_2
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 99
    sub-int v7, v0, v6

    neg-int v7, v7

    div-int/lit8 v4, v7, 0x2

    .line 100
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    neg-int v5, v7

    goto :goto_0

    .line 102
    :cond_3
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 103
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    neg-int v4, v7

    .line 104
    sub-int v7, v6, v0

    div-int/lit8 v5, v7, 0x2

    goto :goto_0

    .line 106
    :cond_4
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 107
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v0, 0x2

    sub-int v4, v7, v8

    .line 108
    sub-int v7, v6, v0

    neg-int v7, v7

    div-int/lit8 v5, v7, 0x2

    goto :goto_0

    .line 111
    :cond_5
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    const/16 v8, 0xb4

    if-ne v7, v8, :cond_9

    .line 112
    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->setRotation(F)V

    .line 114
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    if-nez v7, :cond_6

    .line 115
    sub-int v4, v3, v6

    .line 116
    sub-int v5, v2, v0

    goto/16 :goto_0

    .line 118
    :cond_6
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 119
    sub-int v7, v3, v6

    neg-int v4, v7

    .line 120
    sub-int v7, v2, v0

    neg-int v5, v7

    goto/16 :goto_0

    .line 122
    :cond_7
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 123
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    neg-int v4, v7

    .line 124
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v0, 0x2

    sub-int v5, v7, v8

    goto/16 :goto_0

    .line 126
    :cond_8
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 127
    sub-int v4, v3, v6

    .line 128
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    neg-int v5, v7

    goto/16 :goto_0

    .line 131
    :cond_9
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_0

    .line 132
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->setRotation(F)V

    .line 134
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    if-nez v7, :cond_a

    .line 135
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v0, 0x2

    sub-int v4, v7, v8

    .line 136
    sub-int v7, v6, v0

    div-int/lit8 v5, v7, 0x2

    goto/16 :goto_0

    .line 138
    :cond_a
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    .line 139
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    neg-int v4, v7

    .line 140
    sub-int v7, v6, v0

    neg-int v7, v7

    div-int/lit8 v5, v7, 0x2

    goto/16 :goto_0

    .line 142
    :cond_b
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 143
    sub-int v7, v0, v6

    div-int/lit8 v4, v7, 0x2

    .line 144
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v0, 0x2

    sub-int v5, v7, v8

    goto/16 :goto_0

    .line 146
    :cond_c
    iget v7, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 147
    sub-int v7, v0, v6

    neg-int v7, v7

    div-int/lit8 v4, v7, 0x2

    .line 148
    div-int/lit8 v7, v6, 0x2

    sub-int v7, v2, v7

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    neg-int v5, v7

    goto/16 :goto_0
.end method

.method public setChangDegree(I)V
    .locals 1
    .param p1, "orientation"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    if-ne v0, p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    .line 56
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->a:I

    if-gez v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->d:I

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RotableLinearLayout;->requestLayout()V

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
