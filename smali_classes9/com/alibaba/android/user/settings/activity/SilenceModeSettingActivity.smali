.class public Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SilenceModeSettingActivity.java"


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Lcmt$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->f:Lcmt$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v2

    invoke-virtual {v2}, Lcmp;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v2

    invoke-virtual {v2}, Lcmp;->c()[J

    move-result-object v1

    .line 78
    .local v1, "t":[J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    aget-wide v4, v1, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 84
    aget-wide v2, v1, v6

    aget-wide v4, v1, v7

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    aget-wide v4, v1, v7

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    .end local v1    # "t":[J
    :goto_0
    return-void

    .line 87
    .restart local v0    # "format":Ljava/text/SimpleDateFormat;
    .restart local v1    # "t":[J
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lezg$l;->silence_mode_end_time_next_day:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    aget-wide v6, v1, v7

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    .end local v1    # "t":[J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lezg$j;->activity_silence_mode_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->setContentView(I)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->silence_mode:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1062
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->f:Lcmt$a;

    invoke-virtual {v0, v1}, Lcmt;->a(Lcmt$a;)V

    .line 1066
    sget v0, Lezg$h;->silence_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 1067
    sget v0, Lezg$h;->silence_mode_time_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b:Landroid/view/View;

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->c:Landroid/widget/TextView;

    .line 1069
    sget v0, Lezg$h;->silence_mode_time_end:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->d:Landroid/view/View;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->e:Landroid/widget/TextView;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->a:Landroid/widget/ToggleButton;

    sget v1, Lezg$l;->silence_mode:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b()V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->a:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 42
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->f:Lcmt$a;

    invoke-virtual {v0, v1}, Lcmt;->b(Lcmt$a;)V

    .line 43
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 44
    return-void
.end method
