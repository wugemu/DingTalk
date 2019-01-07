.class public Lcom/alibaba/android/ding/widget/floatingmenu/Label;
.super Landroid/widget/TextView;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;
    }
.end annotation


# static fields
.field private static final j:Landroid/graphics/Xfermode;


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/view/animation/Animation;

.field i:Landroid/view/animation/Animation;

.field private k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->j:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->e:I

    return v0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 135
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-direct {v0, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 148
    .local v0, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 149
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d:I

    return v0
.end method

.method static synthetic d()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->j:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->m:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->n:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->o:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    return v0
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 113
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v7, [I

    const v3, 0x10100a7

    aput v3, v2, v6

    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->f:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    new-array v2, v6, [I

    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->e:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 117
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->g:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-instance v2, Lcom/alibaba/android/ding/widget/floatingmenu/Label$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label$1;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 125
    invoke-virtual {p0, v7}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setClipToOutline(Z)V

    .line 126
    iput-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    .line 131
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 130
    :cond_0
    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 131
    goto :goto_0
.end method

.method final b()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 181
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v4, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 188
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 184
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 186
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0

    .line 184
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method final c()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 194
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v4, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 201
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->l:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 197
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v2, v4, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 199
    invoke-virtual {v1, v5, v5}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method public getShadowWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->p:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->n:I

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->o:I

    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->p:I

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iput v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->q:I

    .line 80
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->n:I

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->o:I

    iget v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->q:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setMeasuredDimension(II)V

    .line 81
    return-void

    :cond_1
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 258
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 263
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    .line 280
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 265
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b()V

    .line 266
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->b()V

    goto :goto_1

    .line 269
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c()V

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->c()V

    goto :goto_1

    .line 273
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c()V

    .line 274
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->c()V

    goto :goto_1

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method setCornerRadius(I)V
    .locals 0
    .param p1, "cornerRadius"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->r:I

    .line 221
    return-void
.end method

.method setFab(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->k:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 208
    invoke-virtual {p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->m:I

    .line 209
    invoke-virtual {p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowRadius()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b:I

    .line 210
    invoke-virtual {p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowXOffset()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c:I

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowYOffset()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d:I

    .line 1505
    iget-boolean v0, p1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 212
    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a:Z

    goto :goto_0
.end method

.method setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->i:Landroid/view/animation/Animation;

    .line 253
    return-void
.end method

.method setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h:Landroid/view/animation/Animation;

    .line 249
    return-void
.end method

.method setShowShadow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a:Z

    .line 217
    return-void
.end method
