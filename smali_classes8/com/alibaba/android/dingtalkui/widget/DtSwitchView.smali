.class public Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;
.source "DtSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field public a:Z

.field private final g:I

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/RectF;

.field private l:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

.field private m:F

.field private n:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lecj$c;->_ui_private_control_switch_width:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->b:I

    .line 29
    sget v0, Lecj$c;->_ui_private_control_switch_height:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->c:I

    .line 32
    sget v0, Lecj$b;->ui_common_content_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->d:I

    .line 33
    sget v0, Lecj$b;->ui_common_blue1_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->e:I

    .line 35
    sget v0, Lecj$c;->dp2:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;-><init>(Landroid/content/Context;)V

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->g:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a()V

    .line 65
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
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->g:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->g:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    return p1
.end method

.method private static a(II)I
    .locals 3
    .param p0, "defaultSize"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 93
    move v1, p0

    .line 95
    .local v1, "mySize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 96
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 98
    .local v2, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 117
    :goto_0
    return v1

    .line 101
    :sswitch_0
    move v1, p0

    .line 102
    goto :goto_0

    .line 106
    :sswitch_1
    move v1, p0

    .line 107
    goto :goto_0

    .line 111
    :sswitch_2
    move v1, v2

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->k:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$1;-><init>(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    .line 1210
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 1211
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 1223
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1228
    :cond_0
    if-eqz v0, :cond_3

    .line 1229
    const-string/jumbo v0, "boundX"

    new-array v3, v4, [F

    iget v4, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    aput v4, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1236
    :goto_1
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$2;-><init>(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->l:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->l:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;->a(Z)V

    .line 24
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1210
    goto :goto_0

    .line 1233
    :cond_3
    const-string/jumbo v0, "boundX"

    new-array v3, v4, [F

    iget v4, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    aput v4, v3, v2

    const/4 v4, 0x0

    aput v4, v3, v1

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingLeft()I

    move-result v13

    int-to-float v7, v13

    .line 161
    .local v7, "paddingLeft":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingTop()I

    move-result v13

    int-to-float v9, v13

    .line 162
    .local v9, "paddingTop":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingRight()I

    move-result v13

    int-to-float v8, v13

    .line 163
    .local v8, "paddingRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingBottom()I

    move-result v13

    int-to-float v6, v13

    .line 165
    .local v6, "paddingBottom":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getWidth()I

    move-result v13

    int-to-float v5, v13

    .line 166
    .local v5, "originalWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getHeight()I

    move-result v13

    int-to-float v4, v13

    .line 168
    .local v4, "originalHeight":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    sub-float v13, v5, v7

    sub-float v12, v13, v8

    .line 172
    .local v12, "width":F
    sub-float v13, v4, v9

    sub-float v2, v13, v6

    .line 174
    .local v2, "height":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v11, v2, v13

    .line 178
    .local v11, "roundRxy":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    mul-float v3, v13, v12

    .line 183
    .local v3, "middleLine":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->k:Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    sget v14, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->e:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v11, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    const v14, -0x646260

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13, v12, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->k:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v11, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    sget v14, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->d:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    sget v13, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->f:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float v13, v2, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v10, v13, v14

    .line 201
    .local v10, "radius":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->i:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->h:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->h:F

    add-float v1, v13, v14

    .line 202
    .local v1, "circleCenterX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v10, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;->onLayout(ZIIII)V

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 143
    .local v2, "width":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 145
    .local v1, "height":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v1, v3

    .line 147
    .local v0, "circleCenterX":F
    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->h:F

    .line 148
    sub-float v3, v2, v0

    iput v3, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->i:F

    .line 149
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractView;->onMeasure(II)V

    .line 123
    sget v2, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->b:I

    invoke-static {v2, p1}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a(II)I

    move-result v1

    .line 124
    .local v1, "width":I
    sget v2, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->c:I

    invoke-static {v2, p2}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a(II)I

    move-result v0

    .line 126
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 258
    if-eqz p1, :cond_0

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->invalidate()V

    .line 264
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->m:F

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->l:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;

    .line 272
    return-void
.end method
