.class public Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ModifyGroupNickActivity.java"


# instance fields
.field private final a:I

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 35
    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->finish()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->finish()V

    .line 52
    :goto_0
    sget v0, Lctk$g;->activity_modify_group_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->setContentView(I)V

    .line 1071
    sget v0, Lctk$f;->et_modify_group_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_modify_group_nick_activity_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1076
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->d:Landroid/os/Handler;

    .line 1161
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->c:Ljava/lang/String;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 56
    return-void

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->c:Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->finish()V

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_modify_group_nick_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->e:J

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->actbar_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "actionView":Landroid/view/View;
    sget v3, Lctk$f;->btn_ok:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 96
    .local v2, "saveButton":Landroid/widget/Button;
    sget v3, Lctk$i;->dt_im_modify_group_nick_save:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 97
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const/4 v3, 0x1

    sget v4, Lctk$i;->dt_im_modify_group_nick_save:I

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 150
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 151
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->onBackPressed()V

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
