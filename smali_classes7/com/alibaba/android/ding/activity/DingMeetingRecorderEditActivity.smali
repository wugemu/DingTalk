.class public Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingMeetingRecorderEditActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Layj;

.field private f:Lbhu;

.field private g:Lbfv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Layj;)Layj;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
    .param p1, "x1"    # Layj;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Lbfv;)Lbfv;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
    .param p1, "x1"    # Lbfv;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->g:Lbfv;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    .line 4226
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4227
    sget v0, Laxp$i;->dt_ding_edit_meeting_recorder_confirm_tip:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    .line 5104
    iget-object v0, v3, Layj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5105
    if-eqz v0, :cond_0

    .line 5108
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v8, v3, Layj;->c:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 5109
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 4228
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Laxp$i;->dt_common_confirm:I

    new-instance v3, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 4229
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 4236
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4242
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 43
    return-void

    .line 5112
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    .line 5197
    if-nez p1, :cond_0

    .line 5198
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5199
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    invoke-virtual {v0}, Layj;->notifyDataSetChanged()V

    .line 5200
    :goto_0
    return-void

    .line 5202
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    if-eqz v0, :cond_1

    .line 5203
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    .line 6099
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhu;->a:Z

    .line 5205
    :cond_1
    new-instance v1, Lbhu;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V

    const-class v2, Lbhu$a;

    .line 5206
    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhu$a;

    invoke-direct {v1, p1, v0}, Lbhu;-><init>(Ljava/util/List;Lbhu$a;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    .line 5222
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    invoke-virtual {v0}, Lbhu;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Lbfv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->g:Lbfv;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Layj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    .line 5173
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v0}, Lbbp;->b(Ljava/lang/String;Lcma;)V

    .line 43
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 43
    .line 6246
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    .line 7099
    iget-wide v4, v0, Layj;->c:J

    .line 6247
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$7;

    invoke-direct {v0, p0, v4, v5}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;J)V

    const-class v1, Lcma;

    .line 6249
    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 7160
    iget-object v0, v2, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$7;

    invoke-direct/range {v1 .. v6}, Lbbp$7;-><init>(Lbbp;Ljava/lang/String;JLcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Laxp$g;->ding_activity_ding_meeting_recorder_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->setContentView(I)V

    .line 2088
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2089
    const-string/jumbo v0, "[DingMeetingReorderEditPage]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "intent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->finish()V

    .line 2097
    :goto_0
    return-void

    .line 2093
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b:Ljava/lang/String;

    .line 2094
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    const-string/jumbo v0, "[DingMeetingReorderEditPage]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingId is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->finish()V

    goto :goto_0

    .line 2104
    :cond_1
    sget v0, Laxp$f;->lv_receivers:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->a:Landroid/widget/ListView;

    .line 2105
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2106
    sget v1, Laxp$i;->dt_ding_can_only_select_one_meeting_recorder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2107
    sget v1, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {p0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2108
    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2109
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 2110
    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 2111
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2112
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2113
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2117
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v0}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    sget v3, Laxp$i;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 75
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 76
    new-instance v3, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 83
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->e:Layj;

    .line 4091
    iget-wide v4, v3, Layj;->c:J

    iget-wide v6, v3, Layj;->b:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v3, v1

    .line 83
    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 84
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    move v3, v2

    .line 4091
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    .line 3099
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhu;->a:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->f:Lbhu;

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 70
    return-void
.end method
