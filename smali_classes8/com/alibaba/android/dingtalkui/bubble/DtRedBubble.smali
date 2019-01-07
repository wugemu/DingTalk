.class public Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;
.super Landroid/view/View;
.source "DtRedBubble.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->_ui_private_reddot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->a:F

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->_ui_private_reddot_with_text_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->b:F

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->_ui_private_reddot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->c:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->i:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->k:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->l:Landroid/graphics/RectF;

    .line 1061
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->d:Landroid/content/Context;

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->d:Landroid/content/Context;

    sget-object v1, Lecj$i;->DtRedBubble:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$b;->_ui_private_reddot_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1065
    sget v2, Lecj$i;->DtRedBubble_bubble_size:I

    iget v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->a:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->g:F

    .line 1066
    sget v2, Lecj$i;->DtRedBubble_bubble_text_color:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 1068
    sget v3, Lecj$i;->DtRedBubble_bubble_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    .line 1069
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lecj$c;->_ui_private_reddot_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v6, 0x43340000    # 180.0f

    const/4 v5, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1115
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1116
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->l:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1117
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->l:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1118
    iget v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    iget v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1119
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->l:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    iget v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1120
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->l:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1121
    iget v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->c:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1124
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->a:F

    iget v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->a:F

    iget v2, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->a:F

    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1094
    iget v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->b:F

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    :goto_0
    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    .line 1101
    :goto_1
    iget v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    iget v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->setMeasuredDimension(II)V

    .line 84
    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->c:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 1098
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->g:F

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->e:I

    .line 1099
    iget v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->g:F

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->f:I

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->h:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/bubble/DtRedBubble;->requestLayout()V

    .line 133
    return-void
.end method
