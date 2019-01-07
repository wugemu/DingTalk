.class public Lcom/alibaba/alimei/mail/widget/TagView;
.super Landroid/view/View;
.source "TagView.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/TagView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/TagView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/TagView;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/widget/TagView;->getWidth()I

    move-result v21

    .line 67
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/widget/TagView;->getHeight()I

    move-result v13

    .line 68
    .local v13, "height":I
    shr-int/lit8 v11, v13, 0x1

    .line 70
    .local v11, "halfH":I
    shr-int/lit8 v19, v21, 0x2

    .line 72
    .local v19, "tagW":I
    shr-int/lit8 v12, v19, 0x1

    .line 75
    .local v12, "halfTagH":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/widget/TagView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v9, "density":F
    float-to-int v10, v9

    .line 77
    .local v10, "gap":I
    const/16 v17, 0x0

    .line 78
    .local v17, "start":I
    sub-int v20, v11, v12

    .line 79
    .local v20, "top":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 81
    .local v8, "colorLen":I
    const/4 v1, 0x3

    if-le v8, v1, :cond_2

    const/16 v16, 0x3

    .line 82
    .local v16, "min":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->a:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v17, v19

    int-to-float v4, v1

    add-int v1, v20, v19

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    add-int v1, v17, v19

    add-int v17, v1, v10

    .line 83
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .end local v14    # "i":I
    .end local v16    # "min":I
    :cond_2
    move/from16 v16, v8

    .line 81
    goto :goto_0

    .line 89
    .restart local v14    # "i":I
    .restart local v16    # "min":I
    :cond_3
    shr-int/lit8 v18, v19, 0x2

    .line 90
    .local v18, "strokeW":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/widget/TagView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_level3_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    move/from16 v14, v16

    :goto_2
    const/4 v1, 0x3

    if-ge v14, v1, :cond_0

    .line 93
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v5, v13

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v15

    .line 95
    .local v15, "layerId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/widget/TagView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_level3_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v17, v19

    int-to-float v4, v1

    add-int v1, v20, v19

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    const v2, -0x995501

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    add-int v1, v17, v18

    int-to-float v2, v1

    add-int v1, v20, v18

    int-to-float v3, v1

    add-int v1, v17, v19

    sub-int v1, v1, v18

    int-to-float v4, v1

    add-int v1, v20, v19

    sub-int v1, v1, v18

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/alimei/mail/widget/TagView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    add-int v1, v17, v19

    add-int v17, v1, v10

    .line 103
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 92
    add-int/lit8 v14, v14, 0x1

    goto :goto_2
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/TagView;->a:Ljava/util/List;

    .line 58
    return-void
.end method
