.class public Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NotificationStyleSettingActivity.java"

# interfaces
.implements Lfwl$b;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lfwi;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/ToggleButton;

.field private i:Lfwl$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Lfwl$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->i:Lfwl$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->g:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->finish()V

    .line 154
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 149
    return-void
.end method

.method public final a(ZLjava/util/List;I)V
    .locals 4
    .param p1, "enable"    # Z
    .param p3, "defaultSound"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/notification/Sound;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/notification/Sound;>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lfwi;

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->c:I

    invoke-direct {v0, p0, v1}, Lfwi;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    invoke-virtual {v0, p2}, Lfwi;->a(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    .line 2032
    iput p3, v0, Lfwi;->a:I

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_1
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    .line 3032
    iput p3, v0, Lfwi;->a:I

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->b:Lfwi;

    invoke-virtual {v0, p2}, Lfwi;->a(Ljava/util/List;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lezg$j;->activity_settings_notification_style:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_notification_setting_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->c:I

    .line 1063
    :cond_0
    sget v0, Lezg$h;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a:Landroid/widget/ListView;

    .line 1064
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->notification_setting_style_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->toggle_sound:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->g:Landroid/widget/ToggleButton;

    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->toggle_vibrate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->h:Landroid/widget/ToggleButton;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->v_line_full:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->e:Landroid/view/View;

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->v_line_partial:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->f:Landroid/view/View;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->g:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->h:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1099
    invoke-static {}, Lcpz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->layout_vibrate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_1
    new-instance v0, Lfwm;

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->c:I

    invoke-direct {v0, p0, v1}, Lfwm;-><init>(Lfwl$b;I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->i:Lfwl$a;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->i:Lfwl$a;

    invoke-interface {v0}, Lfwl$a;->g()V

    .line 60
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->i:Lfwl$a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->i:Lfwl$a;

    invoke-interface {v0}, Lfwl$a;->i()V

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 111
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lfwl$a;

    .line 3116
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NotificationStyleSettingActivity;->i:Lfwl$a;

    .line 26
    return-void
.end method
