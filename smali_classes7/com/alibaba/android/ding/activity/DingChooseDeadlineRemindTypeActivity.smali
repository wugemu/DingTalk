.class public Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingChooseDeadlineRemindTypeActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

.field private b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

.field private c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

.field private d:J

.field private e:J

.field private f:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

.field private g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 28
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .line 32
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 109
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->VALUES:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    .line 110
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->getSelectIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .line 111
    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    .line 2029
    if-eqz p0, :cond_0

    .line 2032
    if-eqz v0, :cond_0

    .line 2035
    if-eqz v1, :cond_0

    .line 2039
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.ding.choose.deadline.remind.type"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2040
    const-string/jumbo v3, "intent_key_deadline_remind_type"

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2041
    const-string/jumbo v0, "intent_key_task_remind_type"

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2042
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->a()V

    .line 46
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Laxp$g;->ding_activity_ding_choose_deadline_remind_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->setContentView(I)V

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_send_type"

    sget-object v4, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .line 1061
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->getValue()I

    move-result v4

    .line 1059
    invoke-static {v0, v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->fromValue(I)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->c:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;->SEND_NOW:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;

    if-ne v0, v1, :cond_0

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1065
    :goto_0
    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->d:J

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_deadline_time"

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1069
    invoke-static {v0, v1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->e:J

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_deadline_remind_type"

    sget-object v4, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->DO_NOT_REMIND:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 1075
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v4

    .line 1073
    invoke-static {v0, v1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->fromValue(J)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->f:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_task_remind_type"

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 1079
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v4

    .line 1077
    invoke-static {v0, v1, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 1084
    sget v0, Laxp$f;->view_base_select:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    .line 1086
    sget v0, Laxp$f;->v_task_remind_type_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    sget v1, Laxp$i;->ding_remind_type_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a(I)V

    .line 1091
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    sget-object v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->VALUES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 1093
    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->e:J

    iget-wide v10, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->d:J

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    move v0, v2

    .line 1095
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_send_time"

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1065
    invoke-static {v0, v1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 1094
    goto :goto_2

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->setEnables(Ljava/util/List;)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->a:Lcom/alibaba/android/dingtalkbase/BaseSelectView;

    sget-object v1, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->RES_IDS:Ljava/util/List;

    sget-object v4, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->VALUES:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->f:Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    .line 1099
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1098
    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkbase/BaseSelectView;->a(Ljava/util/List;IZ)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->g:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setRemindType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setIsDisable(Z)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->setSelectedNum(I)V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->b:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    .line 41
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->a()V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingChooseDeadlineRemindTypeActivity;->finish()V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
