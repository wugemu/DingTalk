.class public Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;
.super Landroid/widget/FrameLayout;
.source "LabelLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    .line 39
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    .line 44
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcig$l;->LabelLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->LabelLayout_gravity:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a:I

    .line 50
    sget v1, Lcig$l;->LabelLayout_line_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    .line 51
    sget v1, Lcig$l;->LabelLayout_column_space:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->c:I

    .line 52
    sget v1, Lcig$l;->LabelLayout_row_space:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->d:I

    .line 53
    sget v1, Lcig$l;->LabelLayout_ellipsize_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->uidic_global_color_transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->i:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v1

    .line 149
    .local v1, "count":I
    const/4 v4, 0x0

    .line 150
    .local v4, "lineIndex":I
    const/4 v6, 0x0

    .line 151
    .local v6, "lineOffset":I
    const/4 v5, -0x2

    .line 152
    .local v5, "lineInfoIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 153
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    .line 155
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 156
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 157
    .local v3, "l":I
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 158
    .local v7, "t":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v3, v8

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 160
    if-lt v2, v4, :cond_0

    .line 161
    add-int/lit8 v5, v5, 0x2

    .line 162
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 163
    iget-object v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 165
    :cond_0
    add-int/2addr v3, v6

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 152
    .end local v3    # "l":I
    .end local v7    # "t":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v2

    .line 64
    .local v2, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingRight()I

    move-result v14

    sub-int v11, v13, v14

    .line 65
    .local v11, "specContentWidth":I
    if-gtz v11, :cond_0

    .line 66
    const v11, 0x7fffffff

    .line 69
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingBottom()I

    move-result v14

    sub-int v10, v13, v14

    .line 70
    .local v10, "specContentHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 71
    .local v12, "specHeightMode":I
    if-gtz v10, :cond_1

    .line 72
    const v10, 0x7fffffff

    .line 75
    :cond_1
    const/4 v3, 0x0

    .line 76
    .local v3, "cursorX":I
    const/4 v4, 0x0

    .line 78
    .local v4, "cursorY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 81
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->i:Z

    .line 83
    const/4 v7, -0x1

    .line 85
    .local v7, "lastViewIndex":I
    const/4 v5, 0x0

    .line 86
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_9

    .line 89
    const/high16 v13, -0x80000000

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v1, v13, v14}, Landroid/view/View;->measure(II)V

    .line 90
    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v3

    if-le v13, v11, :cond_8

    .line 91
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->d:I

    add-int/2addr v13, v14

    if-le v13, v10, :cond_7

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 94
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->i:Z

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v3

    if-le v13, v11, :cond_6

    .line 96
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 97
    .local v6, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 98
    .local v8, "lastX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 99
    .local v9, "lastY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v14

    add-int/2addr v14, v8

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v15

    add-int/2addr v15, v9

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v16

    add-int v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v17

    add-int v17, v17, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lastView":Landroid/view/View;
    .end local v8    # "lastX":I
    .end local v9    # "lastY":I
    :cond_2
    :goto_1
    if-lez v5, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->c:I

    sub-int v14, v3, v14

    sub-int v14, v11, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    add-int/2addr v4, v13

    .line 139
    if-le v4, v10, :cond_4

    const/high16 v13, -0x80000000

    if-eq v12, v13, :cond_5

    :cond_4
    const/high16 v13, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_e

    .line 140
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setMeasuredDimension(II)V

    .line 144
    :goto_3
    return-void

    .line 103
    .restart local v1    # "child":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v16

    add-int v16, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v17

    add-int v17, v17, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 108
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->c:I

    sub-int v14, v3, v14

    sub-int v14, v11, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_4
    const/4 v3, 0x0

    .line 117
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->b:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->d:I

    add-int/2addr v13, v14

    add-int/2addr v4, v13

    .line 120
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->c:I

    add-int/2addr v13, v14

    add-int/2addr v3, v13

    .line 123
    move v7, v5

    .line 86
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 111
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x5

    if-ne v13, v14, :cond_b

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->c:I

    sub-int v14, v3, v14

    sub-int v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 114
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 130
    .end local v1    # "child":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->a:I

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x5

    if-ne v13, v14, :cond_d

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->c:I

    sub-int v14, v3, v14

    sub-int v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 133
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->h:Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 142
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setMeasuredDimension(II)V

    goto/16 :goto_3
.end method
