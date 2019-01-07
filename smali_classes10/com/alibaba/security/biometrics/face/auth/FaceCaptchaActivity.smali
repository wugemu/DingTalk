.class public Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;
.super Lcom/alibaba/security/biometrics/build/i;

# interfaces
.implements Lhwl$a;


# static fields
.field protected static u:F


# instance fields
.field protected i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

.field protected j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

.field public k:Landroid/widget/TextView;

.field protected l:Landroid/widget/RelativeLayout;

.field protected m:Landroid/widget/ImageView;

.field protected n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Lhwd;

.field protected r:Lhwe;

.field public s:Lhwl;

.field protected t:F

.field public v:Lhwn;

.field private w:Landroid/view/animation/Animation;

.field private x:Landroid/view/animation/Animation;

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->u:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/i;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->t:F

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 0
    .line 4000
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    if-eqz v0, :cond_0

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    invoke-virtual {v0}, Lhyt;->b()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screen, w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v2, v1, 0xb4

    div-int/lit16 v2, v2, 0x500

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit16 v1, v1, 0x17c

    div-int/lit16 v1, v1, 0x500

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "circleMaskFrameLayout, w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",topMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",leftMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    invoke-virtual {v0}, Lhyt;->c()I

    move-result v3

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    invoke-virtual {v0}, Lhyt;->b()I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v2, v1

    iget v5, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->t:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/2addr v2, v4

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->t:F

    sub-float/2addr v5, v6

    mul-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v2, v10

    float-to-int v2, v2

    mul-int/lit8 v5, v2, -0x1

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v5, v2, -0x1

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v1, v6, v1

    sub-int/2addr v1, v2

    mul-int/lit8 v6, v1, -0x1

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/4 v1, 0x0

    :goto_1
    const/16 v8, 0x32

    if-ge v1, v8, :cond_3

    sget v8, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->u:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3ee66666    # 0.45f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sput v2, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->u:F

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "randomRadio="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    sub-int v1, v6, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v1, v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cameraSurfaceViewParam, w="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ",h="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ",topMargin="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ",leftMargin="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    int-to-float v1, v3

    iget v5, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->t:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v10

    float-to-int v1, v1

    sub-int v5, v3, v1

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v1

    sub-int/2addr v1, v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "displayRect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    invoke-virtual {v1, v0}, Lhwl;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V
    .locals 3

    .prologue
    .line 0
    .line 5000
    invoke-static {}, Lhyv;->c()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v1}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "K_ANGLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v0}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_PREVIEW_WIDTH"

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v2

    invoke-virtual {v2}, Lhyt;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v0}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "K_PREVIEW_HEIGHT"

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v2

    invoke-virtual {v2}, Lhyt;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, -0x1

    const/16 v1, 0x3ef

    if-ne p1, v1, :cond_3

    sget v0, Lhyx$g;->face_detect_toast_too_close:I

    :cond_0
    :goto_0
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_1

    sget v0, Lhyx$g;->face_detect_action_movein_circle:I

    :cond_1
    if-lez v0, :cond_2

    iget v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->y:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->y:I

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_0

    sget v0, Lhyx$g;->face_detect_toast_too_far:I

    goto :goto_0
.end method

.method public final a(ILhwd;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v0, 0x67

    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhzj;->a(Ljava/lang/String;)V

    .line 3000
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_1

    const/16 p1, 0x96

    .line 0
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lhwd;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->b()V

    return-void

    .line 3000
    :cond_1
    const/16 v1, 0x3f8

    if-ne p1, v1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x3f9

    if-ne p1, v1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x3ff

    if-ne p1, v0, :cond_4

    const/16 p1, 0x9c

    goto :goto_0

    :cond_4
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x98

    goto :goto_0
.end method

.method public final a(Lhwd;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    sget v1, Lhyx$g;->face_detect_auth_pass:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhyx$b;->faceCaptchaTipSuccess:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    sget v1, Lhyx$f;->face_ding:I

    invoke-interface {v0, v1}, Lhwn;->a(I)I

    :cond_0
    invoke-virtual {p1}, Lhwd;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-super {p0, p1}, Lcom/alibaba/security/biometrics/build/i;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lhyx$e;->face_auth_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->setContentView(I)V

    new-instance v0, Lcom/alibaba/security/biometrics/build/bk;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/build/bk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    .line 1000
    sget v0, Lhyx$d;->face_nav_title_bar_back_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lhyc;

    invoke-direct {v1, p0}, Lhyc;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lhyx$d;->face_nav_title_bar_sound_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->v:Lhwn;

    invoke-interface {v1}, Lhwn;->c()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lhyx$c;->face_top_sound_on:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    new-instance v1, Lhyd;

    invoke-direct {v1, p0}, Lhyd;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 0
    sget v0, Lhyx$d;->face_auth_preview_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->l:Landroid/widget/RelativeLayout;

    sget v0, Lhyx$d;->face_captcha_title_textview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->k:Landroid/widget/TextView;

    sget v0, Lhyx$d;->face_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->m:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_auth_scan_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->n:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_auth_scan_rect_blue:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->o:Landroid/widget/ImageView;

    sget v0, Lhyx$d;->face_auth_scan_rect_green:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->p:Landroid/widget/ImageView;

    new-instance v0, Lhwd;

    invoke-direct {v0}, Lhwd;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v0}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v0}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v0}, Lhwd;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SDK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lhwe;

    invoke-direct {v0}, Lhwe;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->r:Lhwe;

    new-instance v0, Lhwl;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    iget-object v2, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->r:Lhwe;

    invoke-direct {v0, p0, v1, v2}, Lhwl;-><init>(Landroid/content/Context;Lhwd;Lhwe;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->s:Lhwl;

    invoke-virtual {v0, p0}, Lhwl;->a(Lhwl$a;)V

    sget v0, Lhyx$d;->face_circle_mask_framelayout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->j:Lcom/alibaba/security/biometrics/face/auth/widget/CircleMaskFrameLayout;

    sget v0, Lhyx$d;->face_circle_surfaceview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    new-instance v1, Lhxz;

    invoke-direct {v1, p0}, Lhxz;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setSurfaceViewListener(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;)V

    sget v0, Lhyx$a;->anim_face_alpha_repeater:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->w:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->w:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    sget v0, Lhyx$a;->anim_face_scan_line_trans:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->x:Landroid/view/animation/Animation;

    return-void

    .line 1000
    :cond_2
    sget v1, Lhyx$c;->face_top_sound_off:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KEYCODE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->r:Lhwe;

    invoke-virtual {v1}, Lhwe;->a()I

    move-result v1

    sget v2, Lhwe;->f:I

    if-ne v1, v2, :cond_0

    :goto_1
    return v0

    :pswitch_0
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/security/biometrics/build/i;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 0
    invoke-super {p0}, Lcom/alibaba/security/biometrics/build/i;->onResume()V

    new-instance v0, Lcom/alibaba/security/biometrics/build/bg;

    invoke-direct {v0, p0}, Lcom/alibaba/security/biometrics/build/bg;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a:Lcom/alibaba/security/biometrics/AuthContext;

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/AuthContext;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lhwm;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lhwm;->a()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->q:Lhwd;

    invoke-virtual {v1}, Lhwd;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->r:Lhwe;

    invoke-virtual {v0}, Lhwe;->a()I

    move-result v0

    sget v1, Lhwe;->f:I

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "M040"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->i:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;

    invoke-virtual {v0, v8}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->setVisibility(I)V

    .line 2000
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_auth_begin_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_auth_begin_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_auth_begin_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lhyx$g;->face_detect_auth_begin_ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    new-instance v5, Lhya;

    invoke-direct {v5, p0}, Lhya;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    new-instance v7, Lhyb;

    invoke-direct {v7, p0}, Lhyb;-><init>(Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/security/biometrics/face/auth/FaceCaptchaActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/security/biometrics/build/cl;

    goto :goto_0
.end method
