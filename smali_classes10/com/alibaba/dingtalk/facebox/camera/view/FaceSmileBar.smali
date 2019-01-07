.class public Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;
.super Landroid/view/View;
.source "FaceSmileBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar$a;

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->i:Z

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->j:Z

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->i:Z

    .line 27
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->j:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-virtual {p0, v6}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->setClickable(Z)V

    .line 44
    sget-object v1, Lgrv$g;->FaceSmilRatingBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    sget v1, Lgrv$g;->FaceSmilRatingBar_faceSmailDistance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    .line 46
    sget v1, Lgrv$g;->FaceSmilRatingBar_faceSmailSize:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    .line 47
    sget v1, Lgrv$g;->FaceSmilRatingBar_faceSmailCount:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    .line 48
    sget v1, Lgrv$g;->FaceSmilRatingBar_faceSmailEmpty:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->f:Landroid/graphics/drawable/Drawable;

    .line 49
    sget v1, Lgrv$g;->FaceSmilRatingBar_faceSmailFill:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1171
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 49
    :goto_0
    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->e:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->e:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 55
    return-void

    .line 1172
    :cond_0
    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1173
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1174
    iget v4, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1175
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public getStarMark()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    if-ge v6, v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->f:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v6

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v6

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 122
    :cond_2
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 123
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 125
    const/4 v6, 0x1

    :goto_2
    int-to-float v0, v6

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 126
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 130
    :cond_3
    const/4 v6, 0x1

    :goto_3
    int-to-float v0, v6

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    sub-float/2addr v2, v7

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 131
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 134
    :cond_4
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    mul-float v3, v0, v2

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 138
    :cond_5
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    mul-float v3, v0, v2

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->a:I

    iget v2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 145
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->j:Z

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 147
    .local v0, "x":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->getMeasuredWidth()I

    move-result v0

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->invalidate()V

    .line 164
    .end local v0    # "x":I
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 151
    .restart local v0    # "x":I
    :pswitch_1
    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->setStarMark(D)V

    goto :goto_0

    .line 155
    :pswitch_2
    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->setStarMark(D)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->j:Z

    .line 105
    return-void
.end method

.method public setIntegerMark(Z)V
    .locals 0
    .param p1, "integerMark"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->i:Z

    .line 62
    return-void
.end method

.method public setOnStarChangeListener(Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar$a;)V
    .locals 0
    .param p1, "onStarChangeListener"    # Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar$a;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->g:Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar$a;

    .line 101
    return-void
.end method

.method public setStarMark(D)V
    .locals 3
    .param p1, "mark"    # D

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->i:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->invalidate()V

    .line 77
    return-void

    .line 71
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/FaceSmileBar;->d:F

    goto :goto_0
.end method
