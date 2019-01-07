.class public Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;
.super Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.source "EnterpriseOAListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;


# instance fields
.field private Z:Lcom/alibaba/wukong/im/Conversation;

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldrh;",
            ">;"
        }
    .end annotation
.end field

.field private ab:J

.field private ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private ad:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field private ae:Landroid/view/View;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/view/View;

.field private ah:Landroid/view/View;

.field private ai:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->au()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;IZ)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 42
    .line 11276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrh;

    .line 12022
    iget-object v1, v0, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 11278
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 11279
    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    .line 11285
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v4

    .line 11286
    const-string/jumbo v5, "app_id"

    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11287
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v7, "oa_todo_worktab_filter_micro_app_selected"

    invoke-interface {v5, v7, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 11290
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(Ljava/lang/String;Z)V

    .line 12334
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v4, v6

    .line 12335
    :goto_1
    if-ge v4, v5, :cond_2

    .line 12336
    if-ne v4, p1, :cond_1

    .line 12337
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldrh;

    const/4 v7, 0x1

    .line 13034
    iput-boolean v7, v1, Ldrh;->b:Z

    .line 12335
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 11281
    :cond_0
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    goto :goto_0

    .line 12339
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldrh;

    .line 14034
    iput-boolean v6, v1, Ldrh;->b:Z

    goto :goto_2

    .line 15014
    :cond_2
    iget-boolean v1, v0, Ldrh;->c:Z

    .line 11293
    if-eqz v1, :cond_3

    .line 15018
    iput-boolean v6, v0, Ldrh;->c:Z

    .line 11297
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->n()V

    .line 11298
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(JJZ)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "close"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 214
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    if-eqz v0, :cond_0

    .line 216
    if-eqz p2, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldvw;->d(Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    invoke-virtual {v0, p1}, Ldvw;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->af:Landroid/widget/TextView;

    const-string/jumbo v1, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lctk$i;->dt_work_oa_message_filter_option_prefix:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static ao()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 230
    .local v0, "engine":Lccr;
    const-string/jumbo v2, "org_id"

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object v1
.end method

.method private at()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 79
    invoke-static {}, Lddq;->f()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 82
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v3, "todo_check_tab_index"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "checkTab":I
    if-nez v0, :cond_2

    .line 86
    const-string/jumbo v3, "ring_msg"

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ai:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "oa_todo_chat_workmsg_click"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v7, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aq()V

    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v3, "work_msg"

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ai:Ljava/lang/String;

    .line 1100
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v3

    .line 1101
    const-string/jumbo v4, "source"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ai:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "oa_todo_main_frame_enter"

    invoke-interface {v4, v7, v5, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ah:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    .line 2021
    invoke-virtual {v3, v6}, Ldvw;->c(Z)V

    goto :goto_0
.end method

.method private au()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 235
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "oa_todo_worktab_filter_click"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcng;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrh;

    .line 239
    .local v0, "filterModel":Ldrh;
    new-instance v4, Lcng;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    .line 7022
    iget-object v7, v0, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 240
    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v0}, Lcng;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0    # "filterModel":Ldrh;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ad:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    if-nez v3, :cond_1

    .line 243
    new-instance v3, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ad:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ad:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "isNotifiyDataChanged":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v3, :cond_4

    .line 249
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 250
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v4, Lctk$i;->dt_work_oa_message_filter_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 251
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ad:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 267
    :goto_1
    if-eqz v1, :cond_2

    .line 268
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ad:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 271
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ac:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 273
    :cond_3
    return-void

    .line 265
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method private static b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;
    .locals 2
    .param p0, "app"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 188
    const/4 v0, 0x0

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 192
    .local v0, "microAppName":Ljava/lang/String;
    invoke-static {}, Lcms;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhTw:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameZhCn:Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_3
    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameEnUs:Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_4
    invoke-static {}, Lcms;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->nameJaJp:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ae:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->D()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    sget v3, Lctk$e;->ic_actbar_filter_oa:I

    invoke-virtual {v2, v4, v3}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 112
    .local v0, "filterView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 113
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Lctk$i;->ding_filter_tip:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    invoke-virtual {v2, v0}, Ldvw;->a(Landroid/view/View;)V

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    sget v3, Lctk$e;->menu_overflow:I

    invoke-virtual {v2, v4, v3}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 124
    .local v1, "goView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 125
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v2, Lctk$i;->title_activity_settings:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    invoke-virtual {v2, v1}, Ldvw;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 10
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 303
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 304
    const-wide/16 v2, -0x1

    .line 305
    .local v2, "notifySenderId":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 306
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 308
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 310
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    .line 7319
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldrh;

    .line 8022
    iget-object v6, v4, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 7321
    iget-wide v6, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 7322
    const/4 v6, 0x1

    .line 9018
    iput-boolean v6, v4, Ldrh;->c:Z

    goto :goto_0

    .line 7324
    :cond_2
    const/4 v6, 0x0

    .line 10018
    iput-boolean v6, v4, Ldrh;->c:Z

    goto :goto_0

    .line 317
    :cond_3
    return-void
.end method

.method public final ap()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ah:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    .line 10021
    invoke-virtual {v1, v2}, Ldvw;->c(Z)V

    .line 419
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v0

    .line 420
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ai:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_todo_worktab_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    return-void
.end method

.method public final aq()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ah:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldvw;->b(Z)V

    .line 10425
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ao()Ljava/util/Map;

    move-result-object v1

    .line 10426
    const-string/jumbo v0, "source"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ai:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10427
    const-string/jumbo v2, "unread_cnt"

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    .line 10577
    iget-object v3, v0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    if-eqz v3, :cond_0

    iget-object v0, v0, Ldvw;->e:Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workCount:I

    .line 10427
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10429
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "oa_todo_todotab_click"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 438
    return-void

    .line 10577
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ar()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->au()V

    .line 443
    return-void
.end method

.method public final as()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 454
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 455
    return-void
.end method

.method protected final f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ab:J

    return-wide v0
.end method

.method protected final g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 144
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g()V

    .line 2347
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    .line 2348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 2349
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2350
    if-eqz v0, :cond_0

    .line 2351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 2352
    new-instance v2, Ldrh;

    invoke-direct {v2}, Ldrh;-><init>()V

    .line 3026
    iput-object v0, v2, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 2354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2358
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    .line 3361
    new-instance v1, Ldrh;

    invoke-direct {v1}, Ldrh;-><init>()V

    .line 3362
    new-instance v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;-><init>()V

    .line 3363
    sget v3, Lctk$i;->dt_im_oa_all:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    .line 3364
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->senderUid:J

    .line 3365
    const/4 v3, 0x1

    .line 4034
    iput-boolean v3, v1, Ldrh;->b:Z

    .line 5018
    iput-boolean v6, v1, Ldrh;->c:Z

    .line 5026
    iput-object v2, v1, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 2358
    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    sget v0, Lctk$f;->filter_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ae:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ae:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    sget v0, Lctk$f;->filter_key:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->af:Landroid/widget/TextView;

    .line 151
    sget v0, Lctk$f;->img_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ag:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrh;

    .line 6022
    iget-object v0, v0, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 153
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(Ljava/lang/String;Z)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->af:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ag:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 373
    const/16 v0, 0x8

    return v0
.end method

.method protected final k()V
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k()V

    .line 412
    :cond_0
    return-void
.end method

.method protected final l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 388
    invoke-static {}, Lddq;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l()V

    .line 405
    :goto_0
    return-void

    .line 392
    :cond_0
    sget v2, Lctk$f;->stub_onebox_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 393
    .local v1, "boxViewContainer":Landroid/widget/FrameLayout;
    new-instance v0, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "boxView":Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    if-eqz v2, :cond_1

    .line 396
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 397
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    invoke-virtual {v2}, Ldvw;->b()V

    .line 398
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    invoke-virtual {v2}, Ldvw;->d()V

    .line 400
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView;->setOnEntryClickListener(Lcom/alibaba/android/dingtalkim/onebox/StubOneBoxView$a;)V

    .line 404
    new-instance v2, Ldvw;

    sget-object v3, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_UP:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    invoke-direct {v2, p0, v0, v3}, Ldvw;-><init>(Landroid/app/Activity;Ldvu;Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->k:Ldvw;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->at()V

    .line 70
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->at()V

    .line 76
    return-void
.end method

.method public final u()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u()V

    .line 380
    sget v0, Lctk$f;->layout_chat_mainborad:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ah:Landroid/view/View;

    .line 381
    invoke-static {}, Lddq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->ah:Landroid/view/View;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 384
    :cond_0
    return-void
.end method
