.class public Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "IMRobotTemplateActivity.java"

# interfaces
.implements Lfvg$b;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:I

.field private D:Lfvg$a;

.field private E:Lcom/alibaba/android/user/contact/view/NotifyingScrollView$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/view/ViewGroup;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:I

.field private t:Landroid/graphics/Rect;

.field private u:Landroid/graphics/Rect;

.field private v:Landroid/graphics/Rect;

.field private w:Landroid/util/TypedValue;

.field private x:Z

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->w:Landroid/util/TypedValue;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->x:Z

    .line 225
    new-instance v0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->E:Lcom/alibaba/android/user/contact/view/NotifyingScrollView$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;FFF)F
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 44
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9273
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 44
    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->f:I

    return p1
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez p0, :cond_0

    .line 317
    :goto_0
    return-object v0

    .line 316
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;II)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    const/4 v3, 0x0

    .line 44
    .line 9252
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 9253
    iget v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->C:I

    if-eq v1, p1, :cond_2

    iget v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->s:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->s:I

    sub-int/2addr v1, v0

    if-lt p1, v1, :cond_2

    .line 9255
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9256
    iput p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->C:I

    .line 9257
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x433e0000    # 190.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 9258
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-gez v1, :cond_0

    .line 9259
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 9261
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9263
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->C:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->s:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_3

    iget v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->s:I

    sub-int v0, v1, v0

    if-ge p1, v0, :cond_1

    .line 9265
    :cond_3
    iput p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->C:I

    .line 9266
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9267
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 9268
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Landroid/view/View;Landroid/view/View;F)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 44
    .line 9289
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 9292
    sub-float v1, v4, p3

    .line 9293
    sub-float v2, v4, p3

    .line 9294
    neg-float v3, p3

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 9295
    neg-float v4, p3

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    sub-float/2addr v0, v4

    .line 9297
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 9298
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 9299
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 9300
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 9302
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 9304
    neg-float v1, p3

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 9305
    neg-float v2, p3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 9307
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 9308
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 44
    .line 8277
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 8278
    invoke-static {p1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->t:Landroid/graphics/Rect;

    .line 8280
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 8281
    invoke-static {p2}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->u:Landroid/graphics/Rect;

    .line 8283
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->v:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 8284
    invoke-static {p3}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->v:Landroid/graphics/Rect;

    .line 44
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->x:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->g:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->f:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 12
    .param p1, "previewMediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    sget v1, Lezg$h;->ll_preview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :goto_0
    return-void

    .line 451
    :cond_0
    sget v1, Lezg$h;->ll_preview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 452
    move-object v2, p1

    .line 453
    .local v2, "ret":Ljava/lang/String;
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lezg$f;->im_robot_margin:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v9, v1, v5

    .line 454
    .local v9, "desiredWidth":I
    invoke-static {v2, v9}, Lcms;->c(Ljava/lang/String;I)I

    move-result v8

    .line 455
    .local v8, "desiredHeight":I
    if-lez v8, :cond_1

    .line 456
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 457
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 458
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    .end local v10    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    :try_start_0
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 468
    :cond_2
    :goto_1
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 469
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->z:Landroid/widget/ImageView;

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_0

    .line 464
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :catch_0
    move-exception v11

    .line 465
    .local v11, "var5":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    .line 6325
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->e:I

    if-nez v0, :cond_0

    .line 6328
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    .line 6329
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->e:I

    .line 6331
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->e:I

    .line 44
    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->g:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Lcom/alibaba/android/user/contact/view/NotifyingScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->d:Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Lfvg$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    .line 7321
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getNavButtonView()Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->j:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->dismissLoadingDialog()V

    .line 527
    return-void
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 127
    sget v1, Lezg$h;->ll_header_full_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->l:Landroid/view/View;

    .line 128
    sget v1, Lezg$h;->user_profile_header_full_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->m:Landroid/widget/TextView;

    .line 129
    sget v1, Lezg$h;->tv_robot_add_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    .line 130
    sget v1, Lezg$h;->tv_robot_add:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    .line 132
    sget v1, Lezg$h;->profile_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->d:Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->d:Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->E:Lcom/alibaba/android/user/contact/view/NotifyingScrollView$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->setOnScrollChangedListener(Lcom/alibaba/android/user/contact/view/NotifyingScrollView$a;)V

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->d:Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->setMinimumHeight(I)V

    .line 136
    sget v1, Lezg$h;->user_profile_header:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->k:Landroid/view/View;

    .line 137
    sget v1, Lezg$h;->user_profile_avatar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 138
    sget v1, Lezg$h;->rl_avatar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->i:Landroid/view/View;

    .line 139
    sget v1, Lezg$h;->iv_gradient_bg:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->j:Landroid/view/View;

    .line 140
    sget v1, Lezg$h;->user_header_full_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->m:Landroid/widget/TextView;

    .line 141
    sget v1, Lezg$h;->view_fill:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->n:Landroid/widget/ImageView;

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$g;->ic_transparent:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 143
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->s:I

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->m:Landroid/widget/TextView;

    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 145
    sget v1, Lezg$h;->tv_desc_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->y:Landroid/widget/TextView;

    .line 146
    sget v1, Lezg$h;->iv_msg_preview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->z:Landroid/widget/ImageView;

    .line 147
    sget v1, Lezg$h;->tv_developer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->A:Landroid/widget/TextView;

    .line 148
    sget v1, Lezg$h;->tv_source_from:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->B:Landroid/widget/TextView;

    .line 149
    sget v1, Lezg$h;->ll_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->o:Landroid/view/ViewGroup;

    .line 150
    sget v1, Lezg$h;->ll_add_operation_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->p:Landroid/view/ViewGroup;

    .line 151
    sget v1, Lezg$h;->tv_add_action_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->q:Landroid/widget/TextView;

    .line 152
    sget v1, Lezg$h;->tv_add_action_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->r:Landroid/widget/TextView;

    .line 158
    sget v1, Lezg$h;->header_fill_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "headFillView":Landroid/view/View;
    sget v1, Lezg$h;->all_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->B:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method public final a(Lfvf;Z)V
    .locals 12
    .param p1, "robotDataAdapter"    # Lfvf;
    .param p2, "canDisplay"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 204
    .line 1335
    if-eqz p1, :cond_10

    .line 1336
    sget v0, Lezg$h;->ll_main_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    if-eqz p1, :cond_2

    .line 1475
    const-string/jumbo v0, ""

    .line 1476
    iget-object v1, p1, Lfvf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1477
    iget-object v0, p1, Lfvf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1495
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    sget v1, Lezg$h;->iftv_robot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1497
    if-eqz v2, :cond_1

    .line 1498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p1, Lfvf;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v0, p1, Lfvf;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1482
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$7;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1338
    :cond_2
    iget-object v6, p1, Lfvf;->h:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    .line 2427
    if-eqz v6, :cond_3

    .line 2430
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    .line 2431
    sget v0, Lezg$h;->ll_main_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2432
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lezg$j;->template_label_text_view:I

    invoke-virtual {v2, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2433
    sget v2, Lezg$h;->iv_org_auth:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2434
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int v8, v1, v2

    .line 2436
    sget v1, Lezg$h;->iv_org_icon:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2437
    sget v2, Lezg$g;->org_logo_default:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 2438
    sget v2, Lezg$h;->tv_org_name:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2440
    iget-object v9, v6, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgName:Ljava/lang/String;

    iget-object v10, v6, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->logoMediaId:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2442
    invoke-static {v1}, Lcms;->a(Landroid/view/View;)I

    move-result v1

    sub-int v1, v8, v1

    .line 2443
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2444
    invoke-virtual {v0, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1339
    :cond_3
    iget-object v0, p1, Lfvf;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1340
    sget v0, Lezg$h;->ll_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->y:Landroid/widget/TextView;

    iget-object v1, p1, Lfvf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    if-eqz p2, :cond_4

    .line 3035
    iget v0, p1, Lfvf;->f:I

    if-ne v0, v5, :cond_7

    move v0, v5

    .line 1345
    :goto_2
    if-nez v0, :cond_8

    invoke-virtual {p1}, Lfvf;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1346
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1406
    :goto_3
    iget-object v0, p1, Lfvf;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c(Ljava/lang/String;)V

    .line 1407
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1408
    sget v0, Lezg$h;->ll_developer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v0, p1, Lfvf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1414
    sget v0, Lezg$h;->ll_source:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->B:Landroid/widget/TextView;

    iget-object v1, p1, Lfvf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    :cond_5
    move v1, v4

    .line 1498
    goto/16 :goto_0

    .line 1342
    :cond_6
    sget v0, Lezg$h;->ll_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v0, v4

    .line 3035
    goto :goto_2

    .line 1349
    :cond_8
    invoke-virtual {p1}, Lfvf;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3101
    iget-object v0, p1, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 1350
    if-eqz v0, :cond_b

    .line 4101
    iget-object v0, p1, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 1350
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botExtraObject:Ldcc;

    if-eqz v0, :cond_b

    .line 5101
    iget-object v0, p1, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 1351
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botExtraObject:Ldcc;

    .line 1352
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1353
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1354
    iget-object v1, v0, Ldcc;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1355
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1360
    :goto_7
    iget-object v1, v0, Ldcc;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1378
    :goto_8
    invoke-virtual {p1}, Lfvf;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1379
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1380
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1385
    :goto_9
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$5;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$6;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1357
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1358
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->q:Landroid/widget/TextView;

    iget-object v2, v0, Ldcc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1363
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->r:Landroid/widget/TextView;

    iget-object v2, v0, Ldcc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->r:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;-><init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Ldcc;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 1375
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1376
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 1382
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1383
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 1402
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1403
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1410
    :cond_e
    sget v0, Lezg$h;->ll_developer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1416
    :cond_f
    sget v0, Lezg$h;->ll_source:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1420
    :cond_10
    sget v0, Lezg$h;->ll_main_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->showLoadingDialog()V

    .line 522
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 221
    sget v1, Lezg$l;->dt_common_i_know:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 223
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->finish()V

    .line 200
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->d:Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->setVisibility(I)V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Lezg$j;->activity_user_im_robot_template_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->setContentView(I)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 94
    .local v10, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 95
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    const-string/jumbo v0, "conversation"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v0, "conversation"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    .line 97
    .local v9, "conversationSerial":Ljava/io/Serializable;
    if-eqz v9, :cond_0

    instance-of v0, v9, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    move-object v1, v9

    .line 98
    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 101
    .end local v9    # "conversationSerial":Ljava/io/Serializable;
    :cond_0
    const-string/jumbo v0, "robot_template_id"

    invoke-virtual {v10, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 102
    .local v2, "botTemplateId":J
    const-string/jumbo v0, "robot_user_id"

    invoke-virtual {v10, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 103
    .local v4, "botUserId":J
    new-instance v0, Lfvh;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lfvh;-><init>(Lcom/alibaba/wukong/im/Conversation;JJLfvg$b;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    invoke-interface {v0}, Lfvg$a;->a()V

    .line 107
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 504
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 505
    .local v0, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/ImageMagician;->unBindViews(Landroid/app/Activity;)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    invoke-interface {v1}, Lfvg$a;->i()V

    .line 511
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 512
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    invoke-interface {v0}, Lfvg$a;->h()V

    .line 123
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    invoke-interface {v0}, Lfvg$a;->g()V

    .line 115
    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lfvg$a;

    .line 5516
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->D:Lfvg$a;

    .line 44
    return-void
.end method
