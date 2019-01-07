.class public Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "RecentSettingActivity.java"

# interfaces
.implements Lgge$b;


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Lgge$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->a:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;)Lgge$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->b:Lgge$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 75
    .line 2093
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isNotify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->a:Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 84
    .line 3093
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 84
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 66
    .line 1093
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->b:Lgge$a;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->b:Lgge$a;

    invoke-interface {v0}, Lgge$a;->a()V

    .line 41
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lfzs$g;->layout_recent_setting_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->setContentView(I)V

    .line 27
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->dt_space_file_feed_setting:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1044
    sget v0, Lfzs$f;->recent_setting_mute:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 1046
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->a:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v0, Lggd;

    invoke-direct {v0, p0, p0}, Lggd;-><init>(Landroid/app/Activity;Lgge$b;)V

    .line 32
    return-void
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lgge$a;

    .line 4061
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgge$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/recent/config/RecentSettingActivity;->b:Lgge$a;

    .line 18
    return-void
.end method
