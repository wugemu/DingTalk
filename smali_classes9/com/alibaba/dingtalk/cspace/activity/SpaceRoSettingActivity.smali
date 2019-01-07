.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceRoSettingActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

.field private b:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/ToggleButton;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->f:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->d:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;Ljava/lang/Long;Lcma;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 37
    .line 3173
    sget v0, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->showLoadingDialog(I)V

    .line 3175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3177
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 3178
    :goto_0
    const-string/jumbo v2, "doc_readonly"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    .line 3181
    :goto_1
    const-string/jumbo v2, "watermark"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;Ljava/util/Map;Ljava/lang/Long;Lcma;)V

    .line 3449
    iget-object v3, v0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v4, Lgon$13;

    invoke-direct {v4, v0, v2}, Lgon$13;-><init>(Lgon;Lcma;)V

    invoke-interface {v3, p1, v1, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->updateSpaceExtensionById(Ljava/lang/Long;Ljava/util/Map;Liyv;)V

    .line 37
    return-void

    .line 3177
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 3180
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "SpaceRoSettingActivity"

    const-string/jumbo v3, "space_permission_root_mainpage"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    sget v0, Lfzs$g;->space_auth_manager_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->setContentView(I)V

    .line 2059
    sget v0, Lfzs$f;->read_only_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    .line 2060
    sget v0, Lfzs$f;->water_mark_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    .line 2061
    sget v0, Lfzs$f;->water_mark_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->c:Landroid/view/View;

    .line 2063
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    sget v2, Lfzs$f;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->d:Landroid/widget/ToggleButton;

    .line 2064
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;

    sget v2, Lfzs$f;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/forms/Item;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->e:Landroid/widget/ToggleButton;

    .line 2066
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lfzs$h;->dt_space_auth_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2151
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2152
    if-eqz v0, :cond_1

    .line 2153
    const-string/jumbo v2, "space_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->f:J

    .line 2154
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfzv;->a(Ljava/lang/Long;)Z

    move-result v2

    .line 2155
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2275
    iget-object v4, v0, Lfzv;->j:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 2276
    iget-object v4, v0, Lfzv;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2277
    iget-object v0, v0, Lfzv;->j:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2157
    :goto_0
    if-eqz v2, :cond_0

    .line 2158
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2161
    :cond_0
    if-eqz v0, :cond_1

    .line 2162
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2163
    if-eqz v2, :cond_1

    .line 2164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3071
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->d:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->e:Landroid/widget/ToggleButton;

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 2279
    goto :goto_0

    .line 3072
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->d:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->e:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
