.class public Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "CategoryNoDisturbSettingActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ToggleButton;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_streamline_mode_only_at_msgs_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lctk$g;->layout_category_no_disturb_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->setContentView(I)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_category_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    sget v0, Lctk$f;->setting_filter_at:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a:Landroid/widget/TextView;

    .line 39
    sget v0, Lctk$f;->setting_filter_at:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b:Landroid/widget/ToggleButton;

    .line 40
    invoke-static {}, Ldyz;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->c:Z

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->a()V

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->b:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    invoke-static {}, Ldyz;->b()Z

    move-result v1

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryNoDisturbSettingActivity;->c:Z

    if-eq v1, v2, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_disturb_conv_switch_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 70
    return-void
.end method
