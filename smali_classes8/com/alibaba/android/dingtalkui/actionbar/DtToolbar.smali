.class public Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "DtToolbar.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/content/res/ColorStateList;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Lecj$a;->ui_common_base_ui_attr_toolbarForegroundColor:I

    aput v3, v2, v4

    sget v3, Lecj$a;->ui_common_base_ui_attr_toolbarTitleCenter:I

    aput v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->d:Landroid/content/res/ColorStateList;

    .line 51
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->e:Z

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "iconString"    # Ljava/lang/String;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 73
    new-instance v0, Lecw;

    invoke-direct {v0, p0, p1}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 74
    .local v0, "icon":Lecw;
    sget v1, Lecj$c;->dp24:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 1070
    iput v1, v0, Lecw;->a:I

    .line 75
    sget v1, Lecj$c;->dp24:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 1079
    iput v1, v0, Lecw;->b:I

    .line 76
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "iconString"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->d:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getNavButtonView()Landroid/widget/ImageButton;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->c:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 108
    :try_start_0
    const-class v2, Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "mNavButtonView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 109
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->c:Landroid/widget/ImageButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->c:Landroid/widget/ImageButton;

    return-object v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSubtitleTextView()Landroid/widget/TextView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->b:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 95
    :try_start_0
    const-class v2, Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "mSubtitleTextView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 96
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->b:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->b:Landroid/widget/TextView;

    return-object v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 82
    :try_start_0
    const-class v2, Landroid/support/v7/widget/Toolbar;

    const-string/jumbo v3, "mTitleTextView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a:Landroid/widget/TextView;

    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    .line 121
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->e:Z

    if-eqz v15, :cond_6

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getMeasuredWidth()I

    move-result v13

    .line 123
    .local v13, "totalWidth":I
    div-int/lit8 v5, v13, 0x2

    .line 124
    .local v5, "middle":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lecj$c;->ui_common_page_padding_left:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 125
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lecj$c;->ui_common_page_padding_right:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 126
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v12

    .line 127
    .local v12, "titleTextView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object v11

    .line 128
    .local v11, "subtitleTextView":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    :cond_0
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 129
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getChildCount()I

    move-result v1

    .line 130
    .local v1, "count":I
    move v4, v6

    .line 131
    .local v4, "leftLimit":I
    sub-int v9, v13, v7

    .line 132
    .local v9, "rightLimit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 134
    .local v14, "v":Landroid/view/View;
    if-eqz v14, :cond_3

    if-eq v14, v12, :cond_3

    if-eq v14, v11, :cond_3

    .line 135
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-ge v15, v5, :cond_2

    .line 136
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-le v15, v4, :cond_2

    .line 137
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v4

    .line 140
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-le v15, v5, :cond_3

    .line 141
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ge v15, v9, :cond_3

    .line 142
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 132
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v14    # "v":Landroid/view/View;
    :cond_4
    sub-int v15, v9, v5

    sub-int v16, v5, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 149
    sub-int v15, v5, v4

    mul-int/lit8 v10, v15, 0x2

    .line 153
    .local v10, "specWidth":I
    :goto_1
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 154
    const/high16 v15, -0x80000000

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/widget/TextView;->measure(II)V

    .line 155
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v13, v15

    div-int/lit8 v3, v15, 0x2

    .line 156
    .local v3, "left":I
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    add-int v8, v3, v15

    .line 157
    .local v8, "right":I
    invoke-virtual {v12}, Landroid/widget/TextView;->getTop()I

    move-result v15

    invoke-virtual {v12}, Landroid/widget/TextView;->getBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v3, v15, v8, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 159
    .end local v3    # "left":I
    .end local v8    # "right":I
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 160
    const/high16 v15, -0x80000000

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/widget/TextView;->measure(II)V

    .line 161
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v13, v15

    div-int/lit8 v3, v15, 0x2

    .line 162
    .restart local v3    # "left":I
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    add-int v8, v3, v15

    .line 163
    .restart local v8    # "right":I
    invoke-virtual {v11}, Landroid/widget/TextView;->getTop()I

    move-result v15

    invoke-virtual {v11}, Landroid/widget/TextView;->getBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v3, v15, v8, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 167
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    .end local v4    # "leftLimit":I
    .end local v5    # "middle":I
    .end local v6    # "paddingLeft":I
    .end local v7    # "paddingRight":I
    .end local v8    # "right":I
    .end local v9    # "rightLimit":I
    .end local v10    # "specWidth":I
    .end local v11    # "subtitleTextView":Landroid/widget/TextView;
    .end local v12    # "titleTextView":Landroid/widget/TextView;
    .end local v13    # "totalWidth":I
    :cond_6
    return-void

    .line 151
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "leftLimit":I
    .restart local v5    # "middle":I
    .restart local v6    # "paddingLeft":I
    .restart local v7    # "paddingRight":I
    .restart local v9    # "rightLimit":I
    .restart local v11    # "subtitleTextView":Landroid/widget/TextView;
    .restart local v12    # "titleTextView":Landroid/widget/TextView;
    .restart local v13    # "totalWidth":I
    :cond_7
    sub-int v15, v9, v5

    mul-int/lit8 v10, v15, 0x2

    .restart local v10    # "specWidth":I
    goto :goto_1
.end method
