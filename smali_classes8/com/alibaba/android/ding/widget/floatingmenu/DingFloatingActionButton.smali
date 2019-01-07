.class public Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
.super Landroid/widget/ImageButton;
.source "DingFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$b;,
        Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/graphics/Xfermode;


# instance fields
.field a:Z

.field b:Landroid/view/GestureDetector;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->c:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 372
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->b:Landroid/view/GestureDetector;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 372
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$2;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->b:Landroid/view/GestureDetector;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    return v0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 252
    new-instance v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$a;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$a;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;Landroid/graphics/drawable/shapes/Shape;B)V

    .line 253
    .local v0, "shapeDrawable":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$a;
    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$a;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 89
    sget-object v7, Laxp$k;->DingFloatingActionButton:[I

    invoke-virtual {p1, p2, v7, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v7, Laxp$k;->DingFloatingActionButton_fab_iconFontResId:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 92
    .local v4, "iconFontResId":I
    if-lez v4, :cond_0

    .line 93
    sget v7, Laxp$k;->DingFloatingActionButton_fab_iconFontSize:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$d;->ding_fab_icon_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 94
    .local v5, "iconSizePx":I
    sget v7, Laxp$k;->DingFloatingActionButton_fab_iconFontColor:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$c;->ui_common_content_bg_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 95
    .local v3, "iconFontColor":I
    new-instance v1, Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 1070
    .local v1, "dtIconFontDrawable":Lecw;
    iput v5, v1, Lecw;->a:I

    .line 1079
    iput v5, v1, Lecw;->b:I

    .line 98
    iput-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    .line 101
    .end local v1    # "dtIconFontDrawable":Lecw;
    .end local v3    # "iconFontColor":I
    .end local v5    # "iconSizePx":I
    :cond_0
    sget v7, Laxp$k;->DingFloatingActionButton_fab_showShadow:I

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 102
    sget v7, Laxp$k;->DingFloatingActionButton_fab_shadowColor:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$c;->ding_fab_shadow_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->g:I

    .line 103
    sget v7, Laxp$k;->DingFloatingActionButton_fab_shadowRadius:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    .line 104
    sget v7, Laxp$k;->DingFloatingActionButton_fab_shadowXOffset:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->i:I

    .line 105
    sget v7, Laxp$k;->DingFloatingActionButton_fab_shadowYOffset:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->j:I

    .line 107
    sget v7, Laxp$k;->DingFloatingActionButton_fab_colorNormal:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$c;->ding_fab_menu_color_blue_normal:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k:I

    .line 108
    sget v7, Laxp$k;->DingFloatingActionButton_fab_colorPressed:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$c;->ding_fab_menu_color_blue_pressed:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->l:I

    .line 109
    sget v7, Laxp$k;->DingFloatingActionButton_fab_colorDisabled:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$c;->ding_fab_menu_color_blue_disabled:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->m:I

    .line 110
    sget v7, Laxp$k;->DingFloatingActionButton_fab_colorRipple:I

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxp$c;->ding_fab_menu_color_blue_normal:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->n:I

    .line 112
    sget v7, Laxp$k;->DingFloatingActionButton_fab_size:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->f:I

    .line 113
    sget v7, Laxp$k;->DingFloatingActionButton_fab_label:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->o:Ljava/lang/String;

    .line 115
    sget v7, Laxp$k;->DingFloatingActionButton_fab_showAnimation:I

    sget v8, Laxp$a;->ding_fab_scale_up:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 116
    .local v6, "showAnimationResourceId":I
    if-lez v6, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->p:Landroid/view/animation/Animation;

    .line 120
    :cond_1
    sget v7, Laxp$k;->DingFloatingActionButton_fab_hideAnimation:I

    sget v8, Laxp$a;->ding_fab_scale_down:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 121
    .local v2, "hideAnimationResourceId":I
    if-lez v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->q:Landroid/view/animation/Animation;

    .line 125
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-virtual {p0, v11}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setClickable(Z)V

    .line 128
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->i:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->j:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e()I

    move-result v0

    return v0
.end method

.method static synthetic d()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->c:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private e()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getCircleSize()I

    move-result v1

    .line 1505
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 1144
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 136
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->f()I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getCircleSize()I

    move-result v1

    .line 2505
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 2148
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 140
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 2148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->g:I

    return v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
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

    .line 228
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 229
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v7, [I

    const v3, -0x101009e

    aput v3, v2, v6

    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->m:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 230
    new-array v2, v7, [I

    const v3, 0x10100a7

    aput v3, v2, v6

    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->l:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 231
    new-array v2, v6, [I

    iget v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k:I

    invoke-direct {p0, v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 233
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 234
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->n:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 236
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-instance v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$1;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 242
    invoke-virtual {p0, v7}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setClipToOutline(Z)V

    .line 243
    iput-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    .line 248
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 247
    :cond_0
    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 248
    goto :goto_0
.end method

.method private getCircleSize()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->f:I

    if-nez v0, :cond_0

    sget v0, Laxp$d;->ding_fab_size_normal:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Laxp$d;->ding_fab_size_mini:I

    goto :goto_0
.end method

.method private getShadowX()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 152
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->i:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 156
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->j:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getCircleSize()I

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    .line 9160
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 40
    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    .line 9164
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 40
    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 192
    .line 3505
    iget-boolean v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 192
    if-eqz v4, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    new-instance v5, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$b;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$b;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;B)V

    aput-object v5, v4, v1

    .line 195
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 203
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_0
    const/4 v9, -0x1

    .line 204
    .local v9, "iconSize":I
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getCircleSize()I

    move-result v4

    if-lez v9, :cond_2

    .end local v9    # "iconSize":I
    :goto_1
    sub-int/2addr v4, v9

    div-int/lit8 v8, v4, 0x2

    .line 4505
    .local v8, "iconOffset":I
    iget-boolean v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 208
    if-eqz v4, :cond_3

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    iget v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->i:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v6, v4, v5

    .line 5505
    .local v6, "circleInsetHorizontal":I
    :goto_2
    iget-boolean v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 209
    if-eqz v4, :cond_4

    iget v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    iget v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->j:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v7, v1, v4

    .line 6505
    .local v7, "circleInsetVertical":I
    :goto_3
    iget-boolean v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 212
    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    add-int v2, v6, v8

    add-int v3, v7, v8

    add-int v4, v6, v8

    add-int v5, v7, v8

    .line 211
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 219
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 220
    return-void

    .line 196
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "circleInsetHorizontal":I
    .end local v7    # "circleInsetVertical":I
    .end local v8    # "iconOffset":I
    :cond_1
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    .line 199
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 207
    .restart local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v9    # "iconSize":I
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Laxp$d;->ding_fab_size_normal:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_1

    .end local v9    # "iconSize":I
    .restart local v8    # "iconOffset":I
    :cond_3
    move v6, v1

    .line 208
    goto :goto_2

    .restart local v6    # "circleInsetHorizontal":I
    :cond_4
    move v7, v1

    .line 209
    goto :goto_3

    .restart local v7    # "circleInsetVertical":I
    :cond_5
    move v1, v3

    .line 212
    goto :goto_4
.end method

.method final a(III)V
    .locals 0
    .param p1, "colorNormal"    # I
    .param p2, "colorPressed"    # I
    .param p3, "colorRipple"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k:I

    .line 319
    iput p2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->l:I

    .line 320
    iput p3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->n:I

    .line 321
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    if-eqz p1, :cond_1

    .line 8292
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->q:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 8293
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 8295
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->p:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 8296
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 543
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 545
    :cond_2
    return-void
.end method

.method final b()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 325
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 327
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 334
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 329
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 330
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 7160
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 7164
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 331
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 332
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0

    .line 327
    .line 330
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    if-eqz p1, :cond_1

    .line 8301
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->p:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 8302
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 8304
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->q:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 8305
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 558
    :cond_1
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 560
    :cond_2
    return-void
.end method

.method final c()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v6, 0x101009e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 338
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 340
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v4, [I

    aput v6, v2, v5

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 347
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 343
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v2, v4, [I

    aput v6, v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 8160
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 8164
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 345
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method public getColorNormal()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k:I

    return v0
.end method

.method protected getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->o:Ljava/lang/String;

    return-object v0
.end method

.method getLabelView()Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    .locals 1

    .prologue
    .line 314
    sget v0, Laxp$f;->ding_fab_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    return-object v0
.end method

.method getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->g:I

    return v0
.end method

.method public getShadowRadius()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    return v0
.end method

.method public getShadowXOffset()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->i:I

    return v0
.end method

.method public getShadowYOffset()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->j:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->e()I

    move-result v0

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->f()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setMeasuredDimension(II)V

    .line 170
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 351
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    sget v2, Laxp$f;->ding_fab_label:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 353
    .local v1, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-nez v1, :cond_0

    .line 354
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 369
    .end local v1    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    :goto_0
    return v2

    .line 357
    .restart local v1    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->b:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 369
    .end local v0    # "action":I
    .end local v1    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 361
    .restart local v0    # "action":I
    .restart local v1    # "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    :pswitch_1
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c()V

    .line 362
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->c()V

    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 585
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 586
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 591
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 596
    sget v1, Laxp$f;->ding_fab_label:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 597
    .local v0, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setEnabled(Z)V

    .line 600
    :cond_0
    return-void
.end method

.method public setFabSize(I)V
    .locals 0
    .param p1, "fabSize"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->f:I

    .line 259
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->q:Landroid/view/animation/Animation;

    .line 580
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 468
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    .line 469
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 471
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 477
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_0

    .line 478
    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    .line 479
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 481
    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->o:Ljava/lang/String;

    .line 564
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getLabelView()Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    move-result-object v0

    .line 565
    .local v0, "labelView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 182
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v0, p1

    .line 184
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v0, p1

    .line 185
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowX()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v0, p1

    .line 186
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getShadowY()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->r:Landroid/view/View$OnClickListener;

    .line 487
    sget v1, Laxp$f;->ding_fab_label:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 488
    .local v0, "label":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 489
    new-instance v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0
    .param p1, "shadowColor"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->g:I

    .line 267
    return-void
.end method

.method public setShadowRadius(I)V
    .locals 0
    .param p1, "shadowRadius"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->h:I

    .line 271
    return-void
.end method

.method public setShadowXOffset(I)V
    .locals 0
    .param p1, "shadowXOffset"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->i:I

    .line 275
    return-void
.end method

.method public setShadowYOffset(I)V
    .locals 0
    .param p1, "shadowYOffset"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->j:I

    .line 279
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->p:Landroid/view/animation/Animation;

    .line 576
    return-void
.end method

.method public setShowShadow(Z)V
    .locals 0
    .param p1, "showShadow"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a:Z

    .line 263
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 604
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 605
    sget v1, Laxp$f;->ding_fab_label:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 606
    .local v0, "label":Lcom/alibaba/android/ding/widget/floatingmenu/Label;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setVisibility(I)V

    .line 609
    :cond_0
    return-void
.end method
