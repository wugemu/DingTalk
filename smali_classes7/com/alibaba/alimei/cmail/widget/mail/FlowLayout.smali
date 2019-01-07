.class public Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0x7fffffff

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    const v2, 0x800003

    :goto_0
    or-int/lit8 v2, v2, 0x30

    iput v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->b:I

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$d;->alm_cmail_6_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->c:I

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$d;->alm_cmail_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->d:I

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->e:Ljava/util/List;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->f:Ljava/util/List;

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->g:Ljava/util/List;

    .line 40
    iput v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->i:I

    .line 41
    iput v4, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->j:I

    .line 241
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->a:Z

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    .line 54
    sget-object v2, Laxo$k;->FlowLayout:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Laxo$k;->FlowLayout_android_gravity:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 59
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void

    .line 30
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "index":I
    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    .line 63
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 1484
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;-><init>(II)V

    .line 26
    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 26
    .line 2476
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 26
    .line 2468
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->b:I

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 271
    .local v0, "hmode":I
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    const/high16 v1, -0x80000000

    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 276
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 278
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->e:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->f:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->g:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getWidth()I

    move-result v25

    .line 292
    .local v25, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getHeight()I

    move-result v11

    .line 294
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingTop()I

    move-result v19

    .line 296
    .local v19, "linesSum":I
    const/16 v18, 0x0

    .line 297
    .local v18, "lineWidth1":I
    const/16 v17, 0x0

    .line 298
    .local v17, "lineHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->b:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x7

    sparse-switch v26, :sswitch_data_0

    .line 304
    const/4 v12, 0x0

    .line 314
    .local v12, "horizontalGravityFactor":F
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_7

    .line 316
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 318
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    .line 320
    .local v20, "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    const/4 v6, 0x0

    .line 321
    .local v6, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_4

    invoke-static/range {v20 .. v20}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a(Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 322
    sub-int v26, v25, v18

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v16, v26, v27

    .line 323
    .local v16, "leftWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->c:I

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 324
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 325
    instance-of v0, v4, Landroid/widget/TextView;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v23, v4

    .line 326
    check-cast v23, Landroid/widget/TextView;

    .line 327
    .local v23, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 328
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v6, v26, v27

    .line 331
    .end local v23    # "tv":Landroid/widget/TextView;
    :cond_0
    if-nez v6, :cond_1

    .line 332
    move/from16 v6, v16

    .line 338
    .end local v16    # "leftWidth":I
    :cond_1
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v27, v0

    add-int v5, v26, v27

    .line 346
    .local v5, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->h:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->i:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v13, v0, :cond_5

    instance-of v0, v4, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 347
    :cond_2
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 307
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v12    # "horizontalGravityFactor":F
    .end local v13    # "i":I
    .end local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :sswitch_0
    const/high16 v12, 0x3f000000    # 0.5f

    .line 308
    .restart local v12    # "horizontalGravityFactor":F
    goto/16 :goto_0

    .line 310
    .end local v12    # "horizontalGravityFactor":F
    :sswitch_1
    const/high16 v12, 0x3f800000    # 1.0f

    .restart local v12    # "horizontalGravityFactor":F
    goto/16 :goto_0

    .line 323
    .restart local v4    # "child":Landroid/view/View;
    .restart local v6    # "childWidth":I
    .restart local v13    # "i":I
    .restart local v16    # "leftWidth":I
    .restart local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    sub-int v26, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v16, v26, v27

    goto/16 :goto_2

    .line 335
    .end local v16    # "leftWidth":I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v6, v26, v27

    goto :goto_3

    .line 353
    .restart local v5    # "childHeight":I
    :cond_5
    add-int v26, v18, v6

    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->f:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->e:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->g:Ljava/util/List;

    move-object/from16 v26, v0

    sub-int v27, v25, v18

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v12

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingLeft()I

    move-result v28

    add-int v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    add-int v19, v19, v17

    .line 360
    const/16 v17, 0x0

    .line 361
    const/16 v18, 0x0

    .line 362
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    .line 365
    :cond_6
    add-int v18, v18, v6

    .line 366
    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 370
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->f:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->e:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->g:Ljava/util/List;

    move-object/from16 v26, v0

    sub-int v27, v25, v18

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v12

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingLeft()I

    move-result v28

    add-int v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int v19, v19, v17

    .line 376
    const/16 v24, 0x0

    .line 377
    .local v24, "verticalGravityMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->b:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x70

    sparse-switch v26, :sswitch_data_1

    .line 389
    :goto_5
    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->e:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v21

    .line 394
    .local v21, "numLines":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingTop()I

    move-result v22

    .line 396
    .local v22, "top":I
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v13, v0, :cond_e

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->f:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->e:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->g:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 402
    .local v15, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v9

    .line 404
    .local v9, "children":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_7
    if-ge v14, v9, :cond_d

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->k:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 408
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    .line 412
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    .line 415
    .restart local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 416
    const/high16 v7, -0x80000000

    .line 417
    .local v7, "childWidthMode":I
    move/from16 v8, v18

    .line 419
    .local v8, "childWidthSize":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 420
    const/high16 v7, 0x40000000    # 2.0f

    .line 427
    :cond_8
    :goto_8
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v27, v0

    sub-int v27, v17, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    .line 428
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 426
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 432
    .end local v7    # "childWidthMode":I
    .end local v8    # "childWidthSize":I
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 433
    .restart local v6    # "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 435
    .restart local v5    # "childHeight":I
    const/4 v10, 0x0

    .line 437
    .local v10, "gravityMargin":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 438
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_2

    .line 452
    :cond_a
    :goto_9
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v26, v26, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v27, v0

    add-int v27, v27, v22

    add-int v27, v27, v10

    add-int v27, v27, v24

    add-int v28, v15, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v29, v22, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    add-int v29, v29, v10

    add-int v29, v29, v24

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 457
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v26, v26, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    add-int v15, v15, v26

    .line 404
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v10    # "gravityMargin":I
    .end local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 382
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "children":I
    .end local v14    # "j":I
    .end local v15    # "left":I
    .end local v21    # "numLines":I
    .end local v22    # "top":I
    :sswitch_2
    sub-int v26, v11, v19

    div-int/lit8 v24, v26, 0x2

    .line 383
    goto/16 :goto_5

    .line 385
    :sswitch_3
    sub-int v24, v11, v19

    goto/16 :goto_5

    .line 421
    .restart local v4    # "child":Landroid/view/View;
    .restart local v7    # "childWidthMode":I
    .restart local v8    # "childWidthSize":I
    .restart local v9    # "children":I
    .restart local v14    # "j":I
    .restart local v15    # "left":I
    .restart local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    .restart local v21    # "numLines":I
    .restart local v22    # "top":I
    :cond_c
    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-ltz v26, :cond_8

    .line 422
    const/high16 v7, 0x40000000    # 2.0f

    .line 423
    move-object/from16 v0, v20

    iget v8, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->width:I

    goto/16 :goto_8

    .line 444
    .end local v7    # "childWidthMode":I
    .end local v8    # "childWidthSize":I
    .restart local v5    # "childHeight":I
    .restart local v6    # "childWidth":I
    .restart local v10    # "gravityMargin":I
    :sswitch_4
    sub-int v26, v17, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v10, v26, 0x2

    .line 445
    goto :goto_9

    .line 447
    :sswitch_5
    sub-int v26, v17, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    move/from16 v27, v0

    sub-int v10, v26, v27

    goto/16 :goto_9

    .line 461
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v10    # "gravityMargin":I
    .end local v20    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    :cond_d
    add-int v22, v22, v17

    .line 396
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 464
    .end local v9    # "children":I
    .end local v14    # "j":I
    .end local v15    # "left":I
    :cond_e
    return-void

    .line 301
    .line 377
    .line 438
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x50 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingRight()I

    move-result v5

    sub-int v26, v3, v5

    .line 76
    .local v26, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 78
    .local v25, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 79
    .local v23, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 81
    .local v22, "modeHeight":I
    const/16 v29, 0x0

    .line 82
    .local v29, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int v8, v3, v5

    .line 84
    .local v8, "height":I
    const/4 v6, 0x0

    .line 85
    .local v6, "lineWidth":I
    const/16 v19, 0x0

    .line 86
    .local v19, "lineHeight":I
    const/16 v20, 0x0

    .line 88
    .local v20, "lineNum":I
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->i:I

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v10

    .line 91
    .local v10, "childCount":I
    const/16 v24, 0x1

    .line 92
    .local v24, "nextLineVisible":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v10, :cond_10

    .line 93
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 94
    .local v4, "child":Landroid/view/View;
    instance-of v3, v4, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    if-eqz v3, :cond_0

    .line 95
    if-eqz v24, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    .line 98
    add-int/lit8 v3, v10, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 99
    move/from16 v0, v29

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 100
    add-int v8, v8, v19

    .line 92
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 106
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    .line 110
    .local v21, "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    const/high16 v14, -0x80000000

    .line 111
    .local v14, "childWidthMode":I
    move-object/from16 v0, v21

    iget v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    sub-int v3, v26, v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    sub-int v15, v3, v5

    .line 113
    .local v15, "childWidthSize":I
    const/high16 v11, -0x80000000

    .line 114
    .local v11, "childHeightMode":I
    move/from16 v12, v25

    .line 116
    .local v12, "childHeightSize":I
    move-object/from16 v0, v21

    iget v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    .line 117
    const/high16 v14, 0x40000000    # 2.0f

    .line 123
    :cond_4
    :goto_3
    move-object/from16 v0, v21

    iget v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->height:I

    if-ltz v3, :cond_a

    .line 124
    const/high16 v11, 0x40000000    # 2.0f

    .line 125
    move-object/from16 v0, v21

    iget v12, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->height:I

    .line 132
    :cond_5
    :goto_4
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 133
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 131
    invoke-virtual {v4, v3, v5}, Landroid/view/View;->measure(II)V

    .line 136
    add-int/lit8 v3, v10, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_b

    const/16 v18, 0x1

    .line 137
    .local v18, "lastChild":Z
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    add-int v13, v3, v5

    .line 138
    .local v13, "childWidth":I
    invoke-static/range {v21 .. v21}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a(Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v18, :cond_6

    .line 139
    instance-of v3, v4, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    move-object/from16 v27, v4

    .line 140
    check-cast v27, Landroid/widget/TextView;

    .line 141
    .local v27, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    add-int v13, v3, v5

    .line 148
    .end local v27    # "tv":Landroid/widget/TextView;
    :cond_6
    :goto_6
    const/16 v16, 0x0

    .line 149
    .local v16, "hintWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 150
    .local v28, "view":Landroid/view/View;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_7

    add-int/lit8 v3, v10, -0x2

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    move-object/from16 v9, v28

    .line 151
    check-cast v9, Landroid/widget/AutoCompleteTextView;

    .line 152
    .local v9, "act":Landroid/widget/AutoCompleteTextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->h:Z

    if-nez v3, :cond_7

    .line 153
    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .end local v21    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    check-cast v21, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    .line 154
    .restart local v21    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->c:I

    invoke-virtual {v9, v3}, Landroid/widget/AutoCompleteTextView;->setMinimumWidth(I)V

    .line 155
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "+"

    aput-object v7, v3, v5

    const/4 v5, 0x1

    sub-int v7, v10, v17

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->rightMargin:I

    add-int v16, v3, v5

    .line 160
    .end local v9    # "act":Landroid/widget/AutoCompleteTextView;
    :cond_7
    add-int v3, v6, v13

    add-int v3, v3, v16

    move/from16 v0, v26

    if-le v3, v0, :cond_f

    .line 161
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->h:Z

    if-nez v3, :cond_d

    .line 162
    if-eqz v24, :cond_8

    .line 163
    add-int/lit8 v3, v17, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->i:I

    .line 164
    sub-int v3, v10, v17

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setHideTipsCount(I)V

    .line 166
    :cond_8
    const/16 v24, 0x0

    .line 183
    :goto_7
    if-eqz v18, :cond_1

    .line 184
    move/from16 v0, v29

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 185
    move v6, v13

    .line 187
    add-int v8, v8, v19

    .line 188
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_2

    .line 118
    .end local v13    # "childWidth":I
    .end local v16    # "hintWidth":I
    .end local v18    # "lastChild":Z
    .end local v28    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v21

    iget v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->width:I

    if-ltz v3, :cond_4

    .line 119
    const/high16 v14, 0x40000000    # 2.0f

    .line 120
    move-object/from16 v0, v21

    iget v15, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->width:I

    goto/16 :goto_3

    .line 126
    :cond_a
    if-nez v22, :cond_5

    .line 127
    const/4 v11, 0x0

    .line 128
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 136
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 144
    .restart local v13    # "childWidth":I
    .restart local v18    # "lastChild":Z
    .restart local v27    # "tv":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->c:I

    goto/16 :goto_6

    .line 168
    .end local v27    # "tv":Landroid/widget/TextView;
    .restart local v16    # "hintWidth":I
    .restart local v28    # "view":Landroid/view/View;
    :cond_d
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->j:I

    move/from16 v0, v20

    if-lt v0, v3, :cond_e

    .line 169
    const/16 v24, 0x0

    .line 170
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_e
    move/from16 v0, v29

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 173
    move v6, v13

    .line 174
    add-int v8, v8, v19

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto :goto_7

    .line 179
    :cond_f
    add-int/2addr v6, v13

    .line 180
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v21

    iget v5, v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_7

    .line 192
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "childHeightMode":I
    .end local v12    # "childHeightSize":I
    .end local v13    # "childWidth":I
    .end local v14    # "childWidthMode":I
    .end local v15    # "childWidthSize":I
    .end local v16    # "hintWidth":I
    .end local v18    # "lastChild":Z
    .end local v21    # "lp":Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
    .end local v28    # "view":Landroid/view/View;
    :cond_10
    if-eqz v24, :cond_11

    .line 193
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setHideTipsCount(I)V

    .line 196
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int v29, v29, v3

    .line 198
    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 200
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_12

    .end local v26    # "sizeWidth":I
    :goto_8
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v3, :cond_13

    .end local v25    # "sizeHeight":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setMeasuredDimension(II)V

    .line 203
    return-void

    .restart local v25    # "sizeHeight":I
    .restart local v26    # "sizeWidth":I
    :cond_12
    move/from16 v26, v29

    .line 200
    goto :goto_8

    .end local v26    # "sizeWidth":I
    :cond_13
    move/from16 v25, v8

    goto :goto_9
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 489
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->b:I

    if-eq v0, p1, :cond_2

    .line 490
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    const v0, 0x800003

    :goto_0
    or-int/2addr p1, v0

    .line 494
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 495
    or-int/lit8 p1, p1, 0x30

    .line 498
    :cond_1
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->b:I

    .line 499
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->requestLayout()V

    .line 501
    :cond_2
    return-void

    .line 491
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setHideTipsCount(I)V
    .locals 6
    .param p1, "hideTipsCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 509
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 510
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 512
    .local v0, "act":Landroid/widget/AutoCompleteTextView;
    if-gtz p1, :cond_1

    .line 513
    :try_start_0
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 514
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/AutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 524
    .end local v0    # "act":Landroid/widget/AutoCompleteTextView;
    :cond_0
    :goto_0
    return-void

    .line 517
    .restart local v0    # "act":Landroid/widget/AutoCompleteTextView;
    :cond_1
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/AutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 518
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "+"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FlowLayout"

    const-string/jumbo v4, "setHideTipsCount"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIsExpend(Z)V
    .locals 3
    .param p1, "isExpend"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->h:Z

    .line 221
    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->h:Z

    .line 1206
    if-nez v1, :cond_1

    .line 1207
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1208
    if-lez v0, :cond_0

    .line 1209
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    :cond_1
    if-eqz v1, :cond_2

    move v1, v0

    .line 1213
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1214
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->invalidate()V

    .line 223
    return-void
.end method

.method public setMaxLineNum(I)V
    .locals 0
    .param p1, "mMaxLineNum"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->j:I

    .line 559
    return-void
.end method
