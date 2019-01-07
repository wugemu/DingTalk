.class public Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ResumeFeedShakeDialog.java"


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView;

.field public b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget v0, Lgtt$g;->RecruitmentFullScreenDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->c:F

    .line 28
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v0, v3, v3}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->scrollToPositionWithOffset(II)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->a()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->scrollToPositionWithOffset(II)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2043
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->b:F

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lgtt$e;->recruitment_dialog_resume_shake_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 37
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    return-void
.end method

.method public show()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->c:F

    .line 1043
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->b:F

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->a()V

    .line 55
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$1;-><init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog$2;-><init>(Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
