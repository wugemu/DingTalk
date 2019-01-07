.class public Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;
.super Landroid/app/Activity;
.source "PiceditActivity2.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/os/Handler;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/net/Uri;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/graphics/Bitmap;

.field private w:I

.field private x:I

.field private y:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->w:I

    .line 269
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$9;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$9;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 462
    if-nez p0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 60
    .line 4164
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->x:I

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4165
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->p:Landroid/view/View;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4166
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 4169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->c:Landroid/view/View;

    invoke-static {v0}, Lhbx;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->v:Landroid/graphics/Bitmap;

    .line 4170
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->v:Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lgtb;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->s:Landroid/net/Uri;

    .line 4171
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->s:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 4172
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->b:Ljava/lang/String;

    const-string/jumbo v2, "[Camera] saveBitmapToUri, uri is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    sget v0, Lgrv$f;->sdcard_unavailable:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4174
    :goto_0
    return-void

    .line 4177
    :cond_1
    const-string/jumbo v0, "facebox"

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->b:Ljava/lang/String;

    const-string/jumbo v2, "[Camera] UserPhoto OnClick"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4179
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->s:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4180
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->setResult(ILandroid/content/Intent;)V

    .line 4182
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 60
    .line 4483
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4484
    :cond_0
    :goto_0
    return-void

    .line 4486
    :cond_1
    sget v0, Lgrv$d;->decorate_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4487
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4489
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    .line 4490
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    .line 4491
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 4492
    const/16 v4, 0x5a

    if-ne p1, v4, :cond_3

    .line 4493
    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 4494
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4495
    int-to-float v1, v1

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4504
    :cond_2
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 4505
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4506
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 4507
    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 4508
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, v4, v1

    float-to-int v1, v1

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4509
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4496
    :cond_3
    const/16 v4, 0xb4

    if-ne p1, v4, :cond_4

    .line 4497
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 4498
    :cond_4
    const/16 v4, 0x10e

    if-ne p1, v4, :cond_2

    .line 4499
    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 4500
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4501
    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 513
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->s:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->x:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x400

    const/4 v5, -0x1

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    sget v0, Lgrv$e;->picedit_activity2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->setContentView(I)V

    .line 1139
    sget v0, Lgrv$d;->picedit_region:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->c:Landroid/view/View;

    .line 1140
    sget v0, Lgrv$d;->picedit_photo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->d:Landroid/widget/ImageView;

    .line 1141
    sget v0, Lgrv$d;->picedit_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->e:Landroid/widget/TextView;

    .line 1142
    sget v0, Lgrv$d;->picedit_year:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->f:Landroid/widget/TextView;

    .line 1143
    sget v0, Lgrv$d;->picedit_username:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->g:Landroid/widget/TextView;

    .line 1144
    sget v0, Lgrv$d;->picedit_location:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->h:Landroid/widget/TextView;

    .line 1146
    sget v0, Lgrv$d;->picedit_location_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->i:Landroid/view/View;

    .line 1147
    sget v0, Lgrv$d;->picedit_username_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->j:Landroid/view/View;

    .line 1148
    sget v0, Lgrv$d;->pic_location_info_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->k:Landroid/view/View;

    .line 1149
    sget v0, Lgrv$d;->rec_info_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->l:Landroid/widget/ImageView;

    .line 1151
    sget v0, Lgrv$d;->picedit_retake:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->r:Landroid/widget/TextView;

    .line 1153
    sget v0, Lgrv$d;->picedit_usephoto:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->y:Landroid/view/View;

    .line 1155
    sget v0, Lgrv$d;->smile_score_num1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1156
    sget v0, Lgrv$d;->smile_score_num2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1157
    sget v0, Lgrv$d;->smile_score_num3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1158
    sget v0, Lgrv$d;->ll_smile_index:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->p:Landroid/view/View;

    .line 1160
    sget v0, Lgrv$d;->operation_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->q:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->s:Landroid/net/Uri;

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->t:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->u:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->y:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$3;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1340
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1341
    if-eqz v2, :cond_5

    .line 1345
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "time"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    const-string/jumbo v0, "username"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    const-string/jumbo v1, "address"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1348
    const-string/jumbo v1, "photoStatus"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1350
    const-string/jumbo v1, "mode"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->w:I

    .line 1352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1353
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->j:Landroid/view/View;

    invoke-static {v1, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    move-object v1, v0

    .line 1362
    :goto_0
    const-string/jumbo v0, "orientation"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->x:I

    .line 1363
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->x:I

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1364
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1365
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1366
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1367
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->w:I

    if-nez v0, :cond_8

    .line 1371
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->l:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 1372
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->p:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 1426
    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1427
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->k:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 1432
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->i:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 1435
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "dateWeather"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    const-string/jumbo v0, "resize"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1439
    if-eqz v0, :cond_4

    .line 1440
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1441
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1442
    const-string/jumbo v1, "picWidth"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1443
    const-string/jumbo v3, "picHeight"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1445
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    if-lez v0, :cond_4

    .line 1446
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1447
    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1448
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1449
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1450
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1451
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1452
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1456
    :cond_4
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->x:I

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1457
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->p:Landroid/view/View;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3292
    :cond_5
    sget-object v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 3293
    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$10;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 136
    return-void

    .line 1355
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_7

    .line 1356
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1359
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto/16 :goto_0

    .line 1373
    :cond_8
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->w:I

    if-ne v0, v10, :cond_2

    .line 1374
    const-string/jumbo v0, "decorate"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1375
    const-string/jumbo v5, "decorateUri"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1376
    if-eqz v0, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1377
    new-instance v6, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Landroid/graphics/Rect;)V

    const-class v0, Lcma;

    invoke-static {v6, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v5, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a(Ljava/lang/String;Lcma;)V

    .line 1405
    :cond_9
    const-string/jumbo v0, "smileScore"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    invoke-static {v0, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1407
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v5, v6, v7, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;I)V

    .line 1408
    invoke-static {}, Lgsp;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1409
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->p:Landroid/view/View;

    invoke-static {v0, v8}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 1413
    :goto_3
    if-ne v4, v10, :cond_b

    .line 1414
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->l:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 1411
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->p:Landroid/view/View;

    invoke-static {v0, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 1416
    :cond_b
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->l:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Landroid/view/View;I)V

    .line 1418
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "swork_facebox_recognition_error_v2"

    invoke-virtual {v0, v4, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2228
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$7;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    .line 2243
    new-instance v4, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$8;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;)V

    .line 2263
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->t:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->u:Ljava/lang/String;

    const-class v0, Lcma;

    .line 2264
    invoke-static {v4, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2263
    invoke-static {v5, v6, v7, v0}, Lgst;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_1

    .line 3186
    :cond_c
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3187
    sget v4, Lgrv$f;->dt_facebox_face_recognition_fail_title:I

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3188
    sget v4, Lgrv$f;->dt_facebox_face_recognition_fail_content:I

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3190
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "facebox_recognition_use_photo"

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 3191
    if-eqz v4, :cond_d

    .line 3192
    sget v4, Lgrv$f;->dt_certify_use_photo:I

    new-instance v5, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3201
    :cond_d
    sget v4, Lgrv$f;->dt_certify_take_photo_retake:I

    new-instance v5, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$5;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$5;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3211
    sget v4, Lgrv$f;->dt_event_alert_give_up:I

    new-instance v5, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$6;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$6;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3220
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 3221
    if-eqz v4, :cond_2

    .line 3222
    invoke-virtual {v4, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3223
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .line 1429
    :cond_e
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 470
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 480
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
