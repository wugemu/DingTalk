.class public Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ResumeFeedMaskDialog.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget v0, Lgtt$g;->RecruitmentFullScreenDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->d:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->d:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lgtt$e;->recruitment_dialog_resume_mask_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lgtt$g;->recruitment_anim_top_out:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 41
    :cond_0
    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->setCanceledOnTouchOutside(Z)V

    .line 1047
    sget v0, Lgtt$d;->iv_finger:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->a:Landroid/widget/ImageView;

    .line 1048
    sget v0, Lgtt$d;->iv_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b:Landroid/widget/ImageView;

    .line 1049
    sget v0, Lgtt$d;->rl_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->c:Landroid/widget/RelativeLayout;

    .line 1051
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lgtt$b;->ui_common_inverse_content_fg_color_alpha_12:I

    .line 1052
    invoke-static {v4}, Leda;->b(I)I

    move-result v4

    aput v4, v2, v3

    sget v3, Lgtt$b;->ui_common_inverse_content_fg_color_alpha_56:I

    .line 1053
    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1056
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$1;-><init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog$2;-><init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedMaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
