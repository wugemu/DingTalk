.class public Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "EfficientModeIntroActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;->overridePendingTransition(II)V

    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v0, Lctk$g;->layout_efficient_intro:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;->setContentView(I)V

    .line 22
    sget v0, Lctk$f;->tv_try:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/session/EfficientModeIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
