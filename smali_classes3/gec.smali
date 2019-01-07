.class public final Lgec;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DentryItemDecoration.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/text/TextPaint;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    :cond_0
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lgec;->d:I

    .line 48
    iget v1, p0, Lgec;->d:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgec;->e:I

    .line 49
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lgec;->f:I

    .line 50
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lgec;->g:I

    .line 51
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lgec;->h:I

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lgec;->a:Landroid/graphics/Paint;

    .line 54
    iget-object v1, p0, Lgec;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lgec;->b:Landroid/graphics/Paint;

    .line 57
    iget-object v1, p0, Lgec;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lgec;->b:Landroid/graphics/Paint;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v1, p0, Lgec;->b:Landroid/graphics/Paint;

    iget v2, p0, Lgec;->f:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    .line 62
    iget-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 64
    iget-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 65
    iget-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    iget-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 68
    iget-object v1, p0, Lgec;->c:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 69
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iput v1, p0, Lgec;->i:F

    .line 70
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 16
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 77
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 79
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 84
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->left:I

    .line 85
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->right:I

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v14

    instance-of v14, v14, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    if-eqz v14, :cond_0

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 91
    .local v4, "mAdapter":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 92
    .local v5, "position":I
    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 95
    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgeh;

    .line 96
    .local v13, "viewModel":Lgeh;
    if-eqz v13, :cond_0

    .line 1139
    iget v12, v4, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    .line 2026
    .local v12, "viewMode":I
    iget-object v6, v13, Lgeh;->b:Ljava/lang/String;

    .line 2034
    .local v6, "section":Ljava/lang/String;
    iget v3, v13, Lgeh;->c:I

    .line 104
    .local v3, "indexInSection":I
    if-nez v12, :cond_2

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    if-nez v3, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget v14, v0, Lgec;->d:I

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 112
    :cond_2
    const/4 v14, 0x1

    if-ne v12, v14, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v14

    instance-of v14, v14, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v14, :cond_0

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    .line 114
    .local v2, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    const/4 v14, 0x1

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 115
    .local v7, "spanCount":I
    if-ge v3, v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 117
    move-object/from16 v0, p0

    iget v14, v0, Lgec;->d:I

    move-object/from16 v0, p0

    iget v15, v0, Lgec;->g:I

    add-int/2addr v14, v15

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 120
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v9

    .line 121
    .local v9, "spanSizeLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    if-eqz v9, :cond_0

    .line 126
    invoke-virtual {v9, v5}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    .line 127
    .local v8, "spanSize":I
    const/4 v14, 0x1

    if-le v8, v14, :cond_0

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v15

    sub-int v11, v14, v15

    .line 129
    .local v11, "totalWidth":I
    div-int v10, v11, v7

    .line 130
    .local v10, "spanWidth":I
    sub-int v14, v7, v8

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v10

    sub-int v14, v11, v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 137
    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    if-nez v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v17

    check-cast v17, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 2139
    .local v17, "mAdapter":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->b:I

    move/from16 v23, v0

    .line 145
    .local v23, "viewMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v8

    .line 146
    .local v8, "childCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v16

    .line 147
    .local v16, "left":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v20, v2, v3

    .line 148
    .local v20, "right":I
    const/4 v13, 0x0

    .line 149
    .local v13, "headerOffset":I
    const/4 v12, 0x0

    .line 150
    .local v12, "firstSectionFound":Z
    const/4 v14, 0x0

    .line 151
    .local v14, "headerVisible":Z
    const/4 v11, 0x0

    .line 152
    .local v11, "firstSection":Ljava/lang/String;
    const/4 v10, 0x0

    .line 155
    .local v10, "currSection":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_1
    if-ge v15, v8, :cond_7

    .line 156
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 157
    .local v22, "view":Landroid/view/View;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v18

    .line 3121
    .local v18, "position":I
    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;->b(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 159
    :goto_2
    if-eqz v2, :cond_4

    .line 160
    const/4 v14, 0x1

    .line 155
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3121
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgeh;

    .line 168
    .local v9, "currItem":Lgeh;
    if-eqz v9, :cond_2

    .line 172
    move-object/from16 v19, v10

    .line 4026
    .local v19, "prevSection":Ljava/lang/String;
    iget-object v10, v9, Lgeh;->b:Ljava/lang/String;

    .line 174
    if-nez v12, :cond_5

    .line 175
    move-object v11, v10

    .line 176
    const/4 v12, 0x1

    .line 178
    :cond_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v24

    .line 184
    .local v24, "viewTop":I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lgec;->d:I

    sub-int v21, v24, v2

    .line 185
    .local v21, "sectionTop":I
    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move/from16 v0, v21

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lgec;->b:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    move-object/from16 v0, p0

    iget v2, v0, Lgec;->h:I

    add-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lgec;->d:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v24, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lgec;->i:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lgec;->c:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lgec;->d:I

    if-le v2, v3, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lgec;->e:I

    if-ge v2, v3, :cond_2

    .line 189
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lgec;->e:I

    sub-int v13, v2, v3

    goto/16 :goto_3

    .line 183
    .end local v21    # "sectionTop":I
    .end local v24    # "viewTop":I
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lgec;->g:I

    sub-int v24, v2, v3

    goto :goto_4

    .line 194
    .end local v9    # "currItem":Lgeh;
    .end local v18    # "position":I
    .end local v19    # "prevSection":Ljava/lang/String;
    .end local v22    # "view":Landroid/view/View;
    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v14, :cond_0

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    const/4 v2, 0x0

    int-to-float v3, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lgec;->d:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lgec;->a:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lgec;->b:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lgec;->h:I

    add-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lgec;->d:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lgec;->i:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lgec;->c:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method
